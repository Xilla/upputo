import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/cards/review_card.dart';
import 'package:upputo/global_widgets/output/rating_stars.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/service_details/local_widgets/filter_button.dart';
import 'package:upputo/modules/service_provider_details/controller.dart';
import 'package:upputo/modules/service_provider_details/local_widgets/social_card.dart';

class ServiceProviderDetailsScreen
    extends GetView<ServiceProviderDetailsController> {
  const ServiceProviderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ServiceProviderDetailsController());
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
                    IconButton(
                      alignment: Alignment.topLeft,
                      icon: const Icon(Icons.favorite_border_outlined),
                      color: AppColors.primary[400],
                      iconSize: 28,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
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
                    SizedBox(
                      width: screenWidth * 0.08,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubText(text: 'John Doe'),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        DetailText(text: 'Electrcian'),
                        const RatingStars(rating: 3, numOfRatings: 20)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabBar(
                        labelPadding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        indicatorColor:
                            AppColors.compliment[300]!.withOpacity(0.5),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 4,
                        tabs: [
                          SubText(text: 'Details'),
                          SubText(text: 'Reviews'),
                          SubText(text: 'More'),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      SizedBox(
                        height: screenHeight * 0.6,
                        child: TabBarView(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FilterButton(
                                  label: 'Lusaka',
                                  icon: const Icon(
                                    Icons.location_on,
                                    color: Colors.purple,
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                FilterButton(
                                  label: '08:00 - 18:00',
                                  icon: const Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                DetailText(
                                  text:
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.3,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (_, index) {
                                  return Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 16, right: 10),
                                      child: ReviewCard(
                                        reviewer: 'Jane Whang',
                                        review:
                                            'Job was done professionally, Happy client here',
                                        reviewAge: '2 days ago',
                                        rating: 4,
                                        onPressed: () {},
                                      ));
                                },
                              ),
                            ),
                            ListView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: [
                                SocialCard(
                                  name: 'Facebook',
                                  assetLink:
                                      'assets/icons/f_logo_RGB-Blue_58.png',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                SocialCard(
                                  name: 'Twitter',
                                  assetLink:
                                      'assets/icons/Twitter social icons - circle - blue.png',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                SocialCard(
                                  name: 'Instagram',
                                  assetLink: 'assets/icons/Instagram-Logo.png',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                SocialCard(
                                  name: 'Tiktok',
                                  assetLink:
                                      'assets/icons/TikTok_Icon_Black_Circle.png',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                SocialCard(
                                  name: 'Website',
                                  assetLink: 'assets/icons/globe-icon.png',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
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
