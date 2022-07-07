import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/sub_button.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/modules/rate_card/controller.dart';
import 'package:upputo/modules/rate_card/local_widgets/rate_category_card.dart';

class RateCardScreen extends GetView<RateCardController> {
  const RateCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RateCardController());
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
                      icon: const Icon(Icons.arrow_back_rounded),
                      color: AppColors.primary[400],
                      iconSize: 28,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SubButton(
                      label: 'Edit',
                      width: screenWidth * 0.2,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                MainText(text: 'Rate Card'),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                ListView.builder(
                  itemCount: controller.cardRates.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: RateCategoryCard(
                        category: controller.cardRates[index].title!,
                        subCategories: controller.cardRates[index].subCategory!,
                      )),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
