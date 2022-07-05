import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';

class SubButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;
  final double? width;

  const SubButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: width,
          height: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary[500]!.withOpacity(0.6)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                label.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
