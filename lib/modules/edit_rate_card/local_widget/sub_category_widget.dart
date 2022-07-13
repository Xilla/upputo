import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/sub_button.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_rate_card/controller.dart';
import 'package:upputo/modules/edit_rate_card/local_widget/entry_widget.dart';

class SubCategoryWidget extends GetView<EditRateCardController> {
  int index;
  SubCategoryWidget({Key? key, required this.index}) : super(key: key);

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
              children: [
                Obx(
                  () => ListView.builder(
                    itemCount: controller.entries.length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: EntryWidget(index: index)),
                  ),
                ),
                Row(
                  children: [
                    SubText(text: controller.subCats[index]),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    SubButton(
                      label: 'add e',
                      width: screenWidth * 0.2,
                      onPressed: () {
                        controller.addEntries('entry');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
