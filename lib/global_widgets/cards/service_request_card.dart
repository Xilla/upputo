import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class ServiceRequestCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? categoryTitle;
  final String serviceTitle;
  final Icon? categoryIcon;
  final Color? color;
  final String serviceDate;

  const ServiceRequestCard(
      {Key? key,
      this.categoryTitle,
      required this.serviceTitle,
      this.categoryIcon,
      this.color,
      required this.serviceDate,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: color,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: screenWidth,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: AppColors.primary[400],
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  SubText(
                    text: serviceTitle,
                    size: 18,
                  ),
                ],
              ),
              DetailText(text: serviceDate)
            ],
          ),
        ),
      ),
    );
  }
}
