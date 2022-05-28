import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
import 'package:upputo/global_widgets/input/textfield_container.dart';

// ignore: must_be_immutable
class InputField extends StatefulWidget {
  String? hintText;
  IconData? icon;
  ValueChanged<String>? onChanged;
  TextEditingController? controller;
  String? Function(String?)? validator;
  FocusNode? focusNode;
  TextInputAction? action;
  TextInputType? inputType;
  bool? isDisabled;
  bool? isPassword;
  List<TextInputFormatter>? inputFormatters;
  String? prefixText;
  String? suffixText;

  InputField({
    Key? key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.controller,
    this.validator,
    this.focusNode,
    this.action = TextInputAction.done,
    this.inputType = TextInputType.text,
    this.prefixText,
    this.suffixText,
    this.inputFormatters,
    this.isDisabled = false,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool? _passwordVisible;

  @override
  // ignore: override_on_non_overriding_member
  void initSate() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        enabled: !widget.isDisabled!,
        textInputAction: widget.action,
        controller: widget.controller,
        validator: widget.validator,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        obscureText: widget.isPassword!,
        keyboardType: widget.inputType,
        cursorColor: AppColors.primary[500],
        style: TextStyle(
          color: AppColors.primary[500],
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.defaultFontSize,
          decoration: TextDecoration.none,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            widget.icon,
            color: AppColors.primary[500],
          ),
          suffixIcon: widget.isPassword!
              ? IconButton(
                  splashRadius: 0.1,
                  icon: Icon(
                    _passwordVisible!
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.primary[500],
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible!;
                    });
                  },
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(
              color: AppColors.primary[300],
              fontSize: Dimensions.defaultFontSize),
          suffixText: widget.suffixText,
          suffixStyle: TextStyle(
              color: AppColors.primary[300],
              fontSize: Dimensions.defaultFontSize),
          prefixText: widget.prefixText,
          prefixStyle: TextStyle(
              color: AppColors.primary[300],
              fontSize: Dimensions.defaultFontSize),
        ),
        inputFormatters: widget.inputFormatters,
      ),
    );
  }
}
