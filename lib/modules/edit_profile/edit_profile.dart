import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/normal_button.dart';
import 'package:upputo/global_widgets/output/edit_section.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/modules/edit_profile/controller.dart';
import 'package:upputo/modules/edit_profile/local_widgets/basic_info.dart';
import 'package:upputo/modules/edit_profile/local_widgets/operation_info.dart';
import 'package:upputo/modules/edit_profile/local_widgets/service_info.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EditProfileController());
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
                  height: screenHeight * 0.01,
                ),
                MainText(text: 'Edit Profile'),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        child: Image.asset(
                          'assets/icons/avatar.jpg',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.01,
                      right: 0.001,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(Icons.add_a_photo,
                              color: AppColors.primary[300]),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              50,
                            ),
                          ),
                          color: AppColors.primary[50],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                EditSection(
                  title: 'Basic Information',
                  child: const BasicInfo(),
                  value: 1,
                  onPressed: () {
                    controller.changeBasicInfoExpansion(
                        !controller.isBasicInfoExpanded.value);
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                EditSection(
                  title: 'Services',
                  child: const ServiceInfo(),
                  value: 2,
                  onPressed: () {
                    controller.changeServiceInfoExpansion(
                        !controller.isServicesExpanded.value);
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                EditSection(
                  title: 'Operations',
                  child: const OperationInfo(),
                  value: 3,
                  onPressed: () {
                    controller.changeOperationInfoExpansion(
                        !controller.isOperationsExpanded.value);
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                NormalButton(text: 'Save Changes')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
