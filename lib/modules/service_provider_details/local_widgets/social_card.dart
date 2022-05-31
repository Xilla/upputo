import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class SocialCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String name;
  final String assetLink;
  const SocialCard(
      {Key? key,
      required this.onPressed,
      required this.name,
      required this.assetLink})
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
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          child: Image.asset(assetLink),
                        ),
                        SizedBox(
                          width: screenWidth * 0.04,
                        ),
                        SubText(
                          text: name,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
