import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/cards/service_request_card.dart';
import 'package:upputo/global_widgets/input/input_field.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/categories/categories.dart';
import 'package:upputo/modules/category_services/category_services.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/global_widgets/cards/category_card.dart';
import 'package:upputo/modules/service_requests/service_requests.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary[50],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.horizontalPadding,
                vertical: Dimensions.verticalPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      alignment: Alignment.topLeft,
                      icon: const Icon(Icons.menu_rounded),
                      color: AppColors.primary[400],
                      iconSize: 28,
                      onPressed: () {},
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      icon: const Icon(Icons.notifications_none_rounded),
                      color: AppColors.primary[400],
                      iconSize: 28,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                MainText(
                  text: 'Hi John',
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                DetailText(text: 'What service are you looking for today?'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                InputField(
                  icon: Icons.search_outlined,
                  hintText: 'Search service',
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubText(text: 'Select Category'),
                    GestureDetector(
                      child: DetailText(text: 'See All'),
                      onTap: () {
                        Get.to(() => const CategoriesScreen());
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: CategoryCard(
                          title: 'Category',
                          color: index % 2 != 1
                              ? AppColors.primary[400]!.withOpacity(0.3)
                              : AppColors.compliment[300]!.withOpacity(0.3),
                          onPressed: () {
                            Get.to(() => const CategoryServicesScreen());
                          },
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubText(text: 'Service Requests'),
                    GestureDetector(
                      child: DetailText(text: 'See All'),
                      onTap: () {
                        Get.to(() => const ServiceRequestsScreen());
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                SizedBox(
                  height: screenHeight * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ServiceRequestCard(
                          serviceDate: '2 Aug 2022',
                          serviceTitle: 'Plumbing',
                          numOfOffers: '2',
                          color: AppColors.primary[50],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
