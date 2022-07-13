import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary color
  static const Map<int, Color> primary = <int, Color>{
    50: Color(0xFFf0f5f3),
    100: Color(0xFFd2e0dc),
    200: Color(0xFFb3cbc5),
    300: Color(0xFF95b6ad),
    400: Color(0xFF77a296),
    500: Color(0xFF5d887c),
    600: Color(0xFF496a61),
    700: Color(0xFF344c45),
    800: Color(0xFF1f2d29),
    900: Color(0xFF0a0f0e)
  };

  // Complemetary color
  static const Map<int, Color> compliment = <int, Color>{
    300: Color(0xFFB6959E)
  };

  // date colors
  static const Color defaultDateColor = Color(0xFF77a296);
  static const Color defaultDayColor = Color(0xFF496a61);
  static const Color defaultMonthColor = Color(0xFF77a296);
  static const Color defaultSelectionColor = Color(0xFF344c45);
  static const Color defaultDeactivatedColor = Color(0xFF666666);

  // rate card colors
  static const Color categoryColor = Colors.white;
  static const Color subColor = Colors.white;
  static const Color entryColor = Colors.white;
  static const Color cardBgColor = Color(0xFF77a296);
}
