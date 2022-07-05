import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/sub_button.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_profile/controller.dart';
import 'package:upputo/modules/edit_profile/local_widgets/service_list_item.dart';

class OperationInfo extends GetView<EditProfileController> {
  const OperationInfo({Key? key}) : super(key: key);

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
          SubText(text: 'Operating hours'),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          SizedBox(
            height: screenHeight * 0.05,
            child: Obx(
              () => ListView.builder(
                itemCount: controller.operatingHours.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ServiceListItem(
                    label: controller.operatingHours[index],
                    width: 140,
                    onPressed: () {
                      controller.operatingHours.removeAt(index);
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          SubButton(
            label: 'Edit',
            width: 100,
            onPressed: () {},
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          SubText(text: 'Serviced Areas'),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          SizedBox(
            height: screenHeight * 0.05,
            child: Obx(
              () => ListView.builder(
                itemCount: controller.servicedAreas.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ServiceListItem(
                    label: controller.servicedAreas[index],
                    width: 120,
                    onPressed: () {
                      controller.servicedAreas.removeAt(index);
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          SubButton(
            label: 'Add Area',
            width: 100,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
