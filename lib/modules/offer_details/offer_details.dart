import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/normal_button.dart';
import 'package:upputo/global_widgets/output/rating_stars.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/main_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/offer_details/controller.dart';

class OfferDetailsScreen extends GetView<HomeController> {
  const OfferDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OfferDetailsController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

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
              MainText(text: 'Offer Details'),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              DetailText(
                text: 'Made by',
              ),
              SizedBox(
                height: screenHeight * 0.02,
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
                      margin: EdgeInsets.only(right: screenWidth * 0.1),
                      child: IconButton(
                        icon: Icon(
                          Icons.email_outlined,
                          size: 36,
                          color: AppColors.primary[200],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.1),
                      child: IconButton(
                        icon: Icon(
                          Icons.sms_outlined,
                          size: 36,
                          color: AppColors.primary[200],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.1),
                      child: IconButton(
                        icon: Icon(
                          Icons.phone_outlined,
                          size: 36,
                          color: AppColors.primary[200],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailText(text: 'Estimated cost'),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      SubText(text: 'K400'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailText(text: 'Completion time'),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      SubText(text: '3 hours'),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              SubText(text: 'Notes'),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              DetailText(
                  text:
                      'Quick job, can be done under 2 hours, Offer open to negotiation'),
              const Spacer(),
              NormalButton(
                text: 'Accept offer',
                color: Colors.white,
                isClickable: true,
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
