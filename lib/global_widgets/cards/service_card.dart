import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class ServiceCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String serviceTitle;
  final Color? color;

  const ServiceCard(
      {Key? key, required this.serviceTitle, this.color, this.onPressed})
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
              border: Border.all(color: color!, width: 2),
              borderRadius: BorderRadius.circular(10)),
          width: screenWidth,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SubText(
                      text: serviceTitle,
                      size: 18,
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    DetailText(text: '(20 providers)')
                  ],
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.primary[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
