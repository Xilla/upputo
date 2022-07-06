import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/output/section_widget/section_widget_controller.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class SectionWidget extends GetView<SectionWidgetController> {
  final Widget child;
  final String title;

  const SectionWidget({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SectionWidgetController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    bool isExpanded = false;

    return Material(
      color: AppColors.primary[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(
                child: Material(
                  color: AppColors.primary[300],
                  child: InkWell(
                    onTap: () {
                      controller.changeSectionExpansion(
                          !controller.isSectionExpanded.value);

                      isExpanded = !isExpanded;
                    },
                    child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Obx(
                          () => Icon(
                            controller.isSectionExpanded.value == false &&
                                    isExpanded == true
                                ? Icons.keyboard_arrow_right_rounded
                                : Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              SubText(
                text: title,
                size: 23,
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Obx(
            () => Visibility(
              visible: controller.isSectionExpanded.value == true &&
                  isExpanded == true,
              child: AnimatedSize(
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 300),
                  child: child),
            ),
          )
        ],
      ),
    );
  }
}
