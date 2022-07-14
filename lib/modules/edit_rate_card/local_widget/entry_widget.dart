import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/sub_button.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_rate_card/controller.dart';

class EntryWidget extends GetView<EditRateCardController> {
  int entriesIndex;
  int categoriesIndex;
  int subCategoriesIndex;

  EntryWidget(
      {Key? key,
      required this.entriesIndex,
      required this.categoriesIndex,
      required this.subCategoriesIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EditRateCardController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.primary[50],
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
            child: Obx(
              () => DetailText(
                text: controller
                    .emptyRates[categoriesIndex]
                    .subCategory![subCategoriesIndex]
                    .entry![entriesIndex]
                    .entry!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
