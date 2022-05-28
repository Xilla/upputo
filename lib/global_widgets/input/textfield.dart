import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/textfield_container.dart';

// ignore: must_be_immutable
class TextFieldInput extends StatelessWidget {
  ValueChanged<String>? onChanged;
  TextEditingController? controller;
  TextInputAction? action;
  FocusNode? focusNode;
  int minLines;
  bool? isDisabled;
  List<TextInputFormatter>? inputFormatters;

  TextFieldInput({
    Key? key,
    this.onChanged,
    this.minLines = 5,
    this.controller,
    this.action,
    this.focusNode,
    this.inputFormatters,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        enabled: !isDisabled!,
        focusNode: focusNode,
        textInputAction: action,
        controller: controller,
        onChanged: onChanged,
        minLines: minLines,
        maxLines: null,
        cursorColor: AppColors.primary[500],
        style: TextStyle(
            color: AppColors.primary[700],
            fontSize: Dimensions.defaultFontSize,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold),
        inputFormatters: inputFormatters,
      ),
    );
  }
}
