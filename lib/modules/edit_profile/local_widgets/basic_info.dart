import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/input_field.dart';
import 'package:upputo/global_widgets/input/textfield.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_profile/controller.dart';

class BasicInfo extends GetView<EditProfileController> {
  const BasicInfo({Key? key}) : super(key: key);

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
          SubText(text: 'Full Name'),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          InputField(
            icon: Icons.search_outlined,
            hintText: '',
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          SubText(text: 'Email'),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          InputField(
            icon: Icons.search_outlined,
            hintText: '',
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          SubText(text: 'Phone'),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          InputField(
            icon: Icons.search_outlined,
            hintText: '',
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          SubText(text: 'Address'),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          InputField(
            icon: Icons.search_outlined,
            hintText: '',
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          SubText(text: 'Bio'),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          TextFieldInput(
            action: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
