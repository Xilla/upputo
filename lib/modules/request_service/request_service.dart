import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/date_picker_widget.dart';
import 'package:upputo/global_widgets/input/input_field.dart';
import 'package:upputo/global_widgets/input/normal_button.dart';
import 'package:upputo/global_widgets/input/textfield.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/request_service/controller.dart';
import 'package:upputo/modules/service_details/local_widgets/filter_button.dart';

class RequestServiceScreen extends GetView<RequestServiceController> {
  const RequestServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RequestServiceController());
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainText(text: 'Request Service'),
                    FilterButton(
                      label: 'Fast Service',
                      icon: const Icon(
                        Icons.bolt,
                        color: Colors.yellow,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                DetailText(text: 'Create a service request to recieve offers'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SubText(text: 'Select Category'),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                InputField(
                  icon: Icons.search_outlined,
                  hintText: '',
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SubText(text: 'Select Service'),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                InputField(
                  icon: Icons.search_outlined,
                  hintText: '',
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SubText(text: 'Service Description'),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                TextFieldInput(
                  action: TextInputAction.done,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SubText(text: 'Service required on'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: controller.controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: AppColors.primary[100]!.withOpacity(0.6),
                  selectedTextColor: AppColors.primary[600]!,
                  onDateChange: (date) {
                    controller.selectedValue = date;
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                NormalButton(
                  text: 'Create Request',
                  color: Colors.white,
                  isClickable: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
