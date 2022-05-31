import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/cards/service_provider_card.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/service_details/controller.dart';
import 'package:upputo/modules/service_details/local_widgets/filter_button.dart';
import 'package:upputo/modules/service_provider_details/service_provider_details.dart';

class ServiceDetailsScreen extends GetView<ServiceDetailsController> {
  const ServiceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ServiceDetailsController());
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      alignment: Alignment.topLeft,
                      icon: const Icon(Icons.arrow_back_rounded),
                      color: AppColors.primary[400],
                      iconSize: 28,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                MainText(text: 'Electricians'),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                DetailText(
                    text:
                        'Search providers offering electrician related services.'),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                SizedBox(
                  height: 36,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FilterButton(
                          label: 'K80 - K90',
                          icon: const Icon(
                            Icons.monetization_on,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FilterButton(
                          label: '3 - 5 stars',
                          icon: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FilterButton(
                          label: 'Lusaka',
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.purple,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                SizedBox(
                  height: screenHeight * 0.66,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: ServiceProviderCard(
                          name: 'John Doe',
                          rating: 2,
                          numOfRatings: 10,
                          onPressed: () {
                            Get.to(() => const ServiceProviderDetailsScreen());
                          },
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
