import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';

class FilterButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;
  final Icon? icon;

  const FilterButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      required this.icon})
      : super(key: key);

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
          width:
              label!.length <= 8 ? 120 : (label!.trim().length.toDouble() * 14),
          height: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary[200]!.withOpacity(0.6)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    child: icon,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    label.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
