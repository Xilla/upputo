import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/output/rating_stars.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class ReviewCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String reviewer;
  final String review;
  final String reviewAge;
  final int rating;

  const ReviewCard(
      {Key? key,
      required this.onPressed,
      required this.reviewer,
      required this.review,
      required this.reviewAge,
      required this.rating})
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
          width: screenWidth,
          height: 110,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubText(
                      text: reviewer,
                      size: 18,
                    ),
                    DetailText(text: reviewAge)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingStars(rating: rating, numOfRatings: 1),
                    const SizedBox()
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [DetailText(text: review)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
