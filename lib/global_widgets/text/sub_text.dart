import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';

class SubText extends StatelessWidget {
  final double size;
  final String text;
  final Color color = AppColors.primary[800]!;

  SubText({
    Key? key,
    required this.text,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Text(
      text,
      style: TextStyle(
        color: AppColors.primary[400]!,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
