import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/offer_details/offer_details.dart';
import 'package:upputo/modules/offers/local_widgets/service_offer_card.dart';
import 'package:upputo/modules/service_details/local_widgets/filter_button.dart';

class OffersScreen extends GetView<HomeController> {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
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
                MainText(text: 'Offers Recieved'),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                DetailText(
                  text:
                      'Your request has recieved the following offers so far.',
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  height: 36,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FilterButton(
                          label: 'K80 - K90',
                          icon: const Icon(
                            Icons.monetization_on,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FilterButton(
                          label: '3 - 5 stars',
                          icon: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FilterButton(
                          label: 'Lusaka',
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.purple,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                SizedBox(
                  height: screenHeight * 0.66,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: ServiceOfferCard(
                              name: 'John Doe',
                              onPressed: () {
                                Get.to(() => const OfferDetailsScreen());
                              },
                              rating: 3,
                              numOfRatings: 13));
                    },
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
