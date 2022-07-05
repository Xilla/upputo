import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';

class ServiceListItem extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;
  final double? width;

  const ServiceListItem({
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
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // width: (label!.trim().length.toDouble() * 10),
          height: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary[500]!.withOpacity(0.4)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onTap: onPressed,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
