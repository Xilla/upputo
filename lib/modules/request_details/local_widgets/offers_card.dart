import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/input/normal_button.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class OffersCard extends StatelessWidget {
  final VoidCallback? onButtonPressed;
  final String buttonTitle;
  final String numOffers;

  const OffersCard({
    Key? key,
    required this.buttonTitle,
    required this.numOffers,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.compliment[300]!.withOpacity(0.15),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: screenWidth,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    DetailText(text: 'Offers'),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    SubText(text: numOffers),
                  ],
                ),
                NormalButton(
                  text: buttonTitle,
                  color: Colors.white,
                  isClickable: true,
                  onPress: onButtonPressed,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
