import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/rate_card/controller.dart';
import 'package:upputo/modules/rate_card/local_models/rate_card_models.dart';
import 'package:upputo/modules/rate_card/local_widgets/rate_sub_category_card.dart';

class RateCategoryCard extends GetView<RateCardController> {
  final String category;
  final List<SubCategory> subCategories;

  const RateCategoryCard({
    Key? key,
    required this.category,
    required this.subCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RateCardController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.cardBgColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.primary[400]!.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(10)),
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SubText(
                //   text: category,
                //   size: 22,
                // ),
                Text(
                  category,
                  style: const TextStyle(
                    color: AppColors.subColor,
                    fontSize: Dimensions.categoryTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ListView.builder(
                  itemCount: subCategories.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: RateSubCategoryCard(
                      subCategory: subCategories[index].name!,
                      entries: subCategories[index].entry!,
                    ),
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
