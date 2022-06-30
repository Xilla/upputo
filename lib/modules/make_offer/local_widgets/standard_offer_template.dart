import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/textfield.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/make_offer/controller.dart';

class StandardOfferTemplate extends GetView<MakeOfferController> {
  const StandardOfferTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MakeOfferController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      color: AppColors.primary[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.01,
          ),
          SubText(text: 'Additional notes'),
          TextFieldInput(
            action: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
