import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/card_selection_option.dart';
import 'package:upputo/global_widgets/input/normal_button.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/make_offer/controller.dart';
import 'package:upputo/modules/make_offer/local_widgets/custom_offer_template.dart';
import 'package:upputo/modules/make_offer/local_widgets/standard_offer_template.dart';

class MakeOfferScreen extends GetView<MakeOfferController> {
  const MakeOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MakeOfferController());
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
                MainText(text: 'Make an offer'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SubText(text: 'Offer type'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Column(
                  children: [
                    Obx(
                      () => CardSelectionOption<int>(
                          value: 1,
                          groupValue: controller.groupValue!.value,
                          title: 'Standard offer',
                          description: 'Simple expression of interest',
                          onChanged: (value) {
                            controller.updateGroupValue(value);
                          }),
                    ),
                    SizedBox(
                      height: screenHeight * 0.005,
                    ),
                    Obx(
                      () => CardSelectionOption<int>(
                          value: 2,
                          groupValue: controller.groupValue!.value,
                          title: 'Custom offer',
                          description:
                              'Detailed offer showing cost and time estimates',
                          onChanged: (value) {
                            controller.updateGroupValue(value);
                          }),
                    ),
                    SizedBox(
                      height: screenHeight * 0.005,
                    ),
                    Obx(
                      () => CardSelectionOption<int>(
                          value: 3,
                          groupValue: controller.groupValue!.value,
                          title: 'Use rate card',
                          description: 'Attach rate card to offer',
                          onChanged: (value) {
                            controller.updateGroupValue(value);
                          }),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Obx(
                  () => Column(
                    children: [
                      Visibility(
                        visible: controller.groupValue!.value == 1,
                        child: const SizedBox(child: StandardOfferTemplate()),
                      ),
                      Visibility(
                        visible: controller.groupValue!.value == 2,
                        child: const SizedBox(child: CustomOfferTemplate()),
                      ),
                      Visibility(
                        visible: controller.groupValue!.value == 3,
                        child: SizedBox(
                          child: SubText(
                            text: 'Rate card offer',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                NormalButton(
                  text: 'Send Offer',
                  color: Colors.white,
                  isClickable: true,
                  onPress: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
