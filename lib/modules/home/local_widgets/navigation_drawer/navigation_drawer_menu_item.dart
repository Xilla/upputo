import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

Widget navMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = AppColors.primary[500];
  final hoverColor = AppColors.primary[900];

  return ListTile(
    leading: Icon(icon, color: color),
    minLeadingWidth: 10,
    // trailing: Icon(Icons.arrow_right_rounded, color: color),
    title: DetailText(text: text),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
