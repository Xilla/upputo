import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/modules/user_clients/controller.dart';
import 'package:upputo/modules/user_clients/local_widgets/client_card.dart';

class UserClientsScreen extends GetView<UserClientsController> {
  const UserClientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(UserClientsController());
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
                MainText(text: 'Clients'),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                ListView.builder(
                  itemCount: controller.clients.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ClientCard(
                        name: controller.clients[index],
                        lastInteractionDate: '13 jun 2022',
                        onPressed: () {},
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
