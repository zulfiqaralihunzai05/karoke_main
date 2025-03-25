import 'package:flutter/material.dart';

import '../../../../../utils/appColors/app_colors.dart';

class AppStyles {
  AppStyles._();

  /// App Shadows
  static BoxShadow elevatedBtnShadow = BoxShadow(
    color: ColorPalette.primaryColor.withOpacity(0.2),
    spreadRadius: 1,
    blurRadius: 2,
    offset: const Offset(5, 4),
  );

  static BoxShadow bottomNavShadow = BoxShadow(
    color: ColorPalette.primaryColor.withOpacity(0.2),
    spreadRadius: 1,
    blurRadius: 2,
    offset: const Offset(1, 3),
  );

  static BoxDecoration elevatedBtnDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    gradient: const LinearGradient(
      colors: [Colors.pinkAccent, Colors.blue],
    ),
  );
}
