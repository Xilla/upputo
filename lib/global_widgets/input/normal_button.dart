import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

// ignore: must_be_immutable
class NormalButton extends StatelessWidget {
  double? width;
  final String text;
  final VoidCallback? onPress;
  final Color? color;
  bool? isCustom;
  bool? isClickable;

  NormalButton(
      {Key? key,
      this.isCustom = false,
      this.isClickable = true,
      this.width,
      required this.text,
      this.color,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: isCustom == true
          ? AppColors.primary[50]
          : isClickable == true
              ? AppColors.primary[500]
              : Colors.grey.withOpacity(0.7),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onPress,
        child: Container(
          width: width,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: isCustom == true
                ? Border.all(color: AppColors.primary[500]!)
                : null,
          ),
          // color: isCustom == true
          //     ? AppColors.notWhite[100]
          //     : AppColors.primary[500]),
          child: Row(
            mainAxisAlignment: isCustom == true
                ? MainAxisAlignment.center
                : MainAxisAlignment.center,
            children: [
              isCustom == true
                  ? Container(
                      margin: const EdgeInsets.only(left: 20, right: 10),
                      child: Image.asset(
                        "assets/icons/google-color.png",
                        height: 22,
                      ),
                    )
                  : Container(),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 20),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
