import 'package:flutter/material.dart';
import 'package:starter/app/styles/text_styles.dart';
import 'app_colors.dart';

class AppThemes {
  static final light = ThemeData(
    appBarTheme: AppBarTheme(
      color: AppColors.white,
      centerTitle: false,
      elevation: 4,
      iconTheme: const IconThemeData(color: AppColors.grey700),
      titleTextStyle: Styles.tsSb18.copyWith(color: AppColors.grey900),
      titleSpacing: 0,
    ),
    scaffoldBackgroundColor: AppColors.white,
  );
}
