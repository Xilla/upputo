import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/make_offer/make_offer.dart';
import 'package:upputo/modules/offers/offers.dart';
import 'package:upputo/modules/request_details/local_widgets/offers_card.dart';

class RequestDetailsScreen extends GetView<HomeController> {
  const RequestDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // for feature testing, remove after logic implementation
    Random random = Random();
    int det = random.nextInt(3);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary[50],
        body: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.horizontalPadding,
              vertical: Dimensions.verticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
              MainText(text: 'Service Request Details'),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              SubText(text: 'Plumbing service'),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DetailText(text: 'Created by'),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      SubText(text: 'John Doe'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailText(text: 'Required on'),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      SubText(text: '1st July, 2022'),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              SubText(text: 'About the service'),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              DetailText(
                  text:
                      'This is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Spacer(),
              OffersCard(
                // buttonTitle: 'View Offers',
                buttonTitle: det % 2 != 1 ? 'Make an Offer' : 'View Offers',
                numOffers: '3',
                onButtonPressed: () {
                  // Get.to(() => const OffersScreen());
                  // Get.to(() => const MakeOfferScreen());

                  if (det % 2 != 1) {
                    Get.to(() => const MakeOfferScreen());
                  } else {
                    Get.to(() => const OffersScreen());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
