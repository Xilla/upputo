import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/output/rating_stars.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class ServiceOfferCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? displayPictureLink;
  final String name;
  final int rating;
  final int numOfRatings;

  const ServiceOfferCard(
      {Key? key,
      required this.name,
      required this.onPressed,
      required this.rating,
      required this.numOfRatings,
      this.displayPictureLink = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.primary[50],
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.primary[400]!.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        child: Image.asset(
                          'assets/icons/avatar.jpg',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.06,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubText(text: name),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        DetailText(text: 'Electrcian'),
                        RatingStars(rating: rating, numOfRatings: numOfRatings)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    DetailText(
                      text: 'Initial offer',
                      size: 18,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    SubText(text: 'K400')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
