import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/sub_button.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/edit_rate_card/controller.dart';
import 'package:upputo/modules/edit_rate_card/local_widget/add_category_widget.dart';
import 'package:upputo/modules/edit_rate_card/local_widget/categories_widget.dart';

class EditRateCardScreen extends GetView<EditRateCardController> {
  const EditRateCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EditRateCardController());
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                MainText(text: 'Edit Rate Card'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Obx(
                  () => ListView.builder(
                    // itemCount: controller.cats.length,
                    itemCount: controller.emptyRates.length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: CategoriesWidget(
                          categoriesIndex: index,
                        )),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                AddCategoryWidget(
                  title: 'Add Category',
                  onPressed: () {
                    controller.addCategory('Category');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
