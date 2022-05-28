import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upputo/core/values/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: screenWidth,
      decoration: BoxDecoration(
        color: AppColors.primary[100]!.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
