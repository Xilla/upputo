import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class CardSelectionOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String title;
  final String description;
  final ValueChanged<T> onChanged;

  const CardSelectionOption({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.description,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final bool isSelected = value == groupValue;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: isSelected
          ? AppColors.primary[400]!.withOpacity(0.3)
          : AppColors.primary[50],
      child: InkWell(
        onTap: () => onChanged(value),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: screenHeight * 0.084,
          width: screenWidth,
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.primary[400]!.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubText(text: title),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                DetailText(text: description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
