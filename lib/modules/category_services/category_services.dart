import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/cards/service_card.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/modules/category_services/controller.dart';
import 'package:upputo/modules/service_details/service_details.dart';

class CategoryServicesScreen extends GetView<CategoryServicesController> {
  const CategoryServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryServicesController());
    double screenHeight = MediaQuery.of(context).size.height;

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
                MainText(text: 'Category name'),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                DetailText(
                    text:
                        'Short catchy description about the selected category.'),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  height: screenHeight * 0.76,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: ServiceCard(
                          serviceTitle: 'Electricians',
                          color: index % 2 != 1
                              ? AppColors.primary[400]!.withOpacity(0.3)
                              : AppColors.compliment[300]!.withOpacity(0.3),
                          onPressed: () {
                            Get.to(() => const ServiceDetailsScreen());
                          },
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
