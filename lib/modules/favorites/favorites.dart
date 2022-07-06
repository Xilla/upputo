import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/output/section_widget/section_widget.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/modules/favorites/controller.dart';
import 'package:upputo/modules/recent_services/local_widgets/recent_service_list_widget.dart';

class FavoritesScreen extends GetView<FavoritesController> {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FavoritesController());
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
                MainText(text: 'Favorites'),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Obx(
                    () => ListView.builder(
                      itemCount: controller.favoriteServices.length,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: SectionWidget(
                          title: controller.favoriteServices[index],
                          child: RecentServiceList(
                            recentServices: controller.favoriteServiceProviders,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
