import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upputo/core/values/colors.dart';

class MainText extends StatelessWidget {
  final double size;
  final String text;
  final Color color = AppColors.primary[400]!;

  MainText({
    Key? key,
    required this.text,
    this.size = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Text(
      text,
      style: TextStyle(
        color: AppColors.primary[600]!,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
