import 'package:flutter/material.dart';
import 'package:space_app/utilities/app_colors.dart';

abstract final class AppTextStyle {
  static const titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
  static const detailedText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
}
