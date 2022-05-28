import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upputo/core/values/colors.dart';

class DetailText extends StatelessWidget {
  final double size;
  final String text;
  final Color color = AppColors.primary[700]!;

  DetailText({
    Key? key,
    required this.text,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Text(
      text,
      style: TextStyle(
        color: AppColors.primary[300]!,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
