import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/sub_button.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_rate_card/controller.dart';
import 'package:upputo/modules/edit_rate_card/local_widget/sub_category_widget.dart';

class CategoriesWidget extends GetView<EditRateCardController> {
  int categoriesIndex;
  CategoriesWidget({Key? key, required this.categoriesIndex}) : super(key: key);

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => SubText(
                    text: controller.emptyRates[categoriesIndex].title!,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Obx(
                  () => ListView.builder(
                    // itemCount: controller.subCats.length,
                    itemCount: controller
                        .emptyRates[categoriesIndex].subCategory!.length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: SubCategoryWidget(
                            categoriesIndex: categoriesIndex,
                            subCategoriesIndex: index)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    SubButton(
                      label: 'Add Sub',
                      width: screenWidth * 0.2,
                      onPressed: () {
                        controller.addSubCategory('sub cat');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
