import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/home/local_widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:upputo/modules/home/local_widgets/navigation_drawer/navigation_drawer_menu_item.dart';
import 'package:upputo/modules/profile/profile.dart';
import 'package:upputo/modules/recent_services/recent_services.dart';

class NavigationDrawer extends GetView<HomeController> {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: AppColors.primary[50],
    //     body: SingleChildScrollView(
    //       physics: const BouncingScrollPhysics(),
    //       child: Container(
    //         padding: const EdgeInsets.symmetric(
    //             horizontal: Dimensions.horizontalPadding,
    //             vertical: Dimensions.verticalPadding),
    //       ),
    //     ),
    //   ),
    // );

    return Drawer(
      child: Material(
        color: AppColors.primary[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              navHeader(
                name: 'John Doe',
                email: 'johndoe@gmail.com',
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      navMenuItem(
                        text: 'Profile',
                        icon: Icons.person_outline,
                        onClicked: () {
                          Get.to(() => const ProfileScreen());
                        },
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          color: AppColors.primary[200]!.withOpacity(0.3),
                          height: 2,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      navMenuItem(
                        text: 'Recent services',
                        icon: Icons.watch_later_outlined,
                        onClicked: () {
                          Get.to(() => const RecentServicesScreen());
                        },
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      navMenuItem(
                        text: 'Favorites',
                        icon: Icons.favorite_border_outlined,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      navMenuItem(
                        text: 'Clients',
                        icon: Icons.people_outline,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      navMenuItem(
                        text: 'Rate card',
                        icon: Icons.document_scanner_outlined,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  navMenuItem(
                    text: 'List my services',
                    icon: Icons.add_box_outlined,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  navMenuItem(
                    text: 'Settings',
                    icon: Icons.settings_outlined,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  navMenuItem(
                    text: 'Sign out',
                    icon: Icons.exit_to_app_outlined,
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
