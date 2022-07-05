import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_profile/controller.dart';

class EditSection extends GetView<EditProfileController> {
  final Widget child;
  final String title;
  final VoidCallback? onPressed;
  final int value;

  EditSection(
      {Key? key,
      required this.child,
      required this.title,
      required this.value,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EditProfileController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

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
                    onTap: onPressed,
                    child:
                        SizedBox(width: 40, height: 40, child: _buildArrow()),
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
          _buildContent()
        ],
      ),
    );
  }

  Widget _buildArrow() {
    if (value == 1) {
      return Obx(
        () => Icon(
          controller.isBasicInfoExpanded.value == false
              ? Icons.keyboard_arrow_right_rounded
              : Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        ),
      );
    }

    if (value == 2) {
      return Obx(
        () => Icon(
          controller.isServicesExpanded.value == false
              ? Icons.keyboard_arrow_right_rounded
              : Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        ),
      );
    }

    return Obx(
      () => Icon(
        controller.isOperationsExpanded.value == false
            ? Icons.keyboard_arrow_right_rounded
            : Icons.keyboard_arrow_down_rounded,
        color: Colors.white,
      ),
    );
  }

  Widget _buildContent() {
    if (value == 1) {
      return Obx(
        () => Visibility(
          visible: controller.isBasicInfoExpanded.value == true,
          child: AnimatedSize(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 3000),
              child: child),
        ),
      );
    }

    if (value == 2) {
      return Obx(
        () => Visibility(
          visible: controller.isServicesExpanded.value == true,
          child: AnimatedSize(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 300),
              child: child),
        ),
      );
    }

    return Obx(
      () => Visibility(
        visible: controller.isOperationsExpanded.value == true,
        child: AnimatedSize(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 3000),
            child: child),
      ),
    );
  }
}
