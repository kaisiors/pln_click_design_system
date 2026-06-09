import 'package:flutter/material.dart';
import 'package:pln_click_design_system/pln_click_design_system.dart';

import 'app_text_styles.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle headingLarge;
  final TextStyle headingMedium;
  final TextStyle headingSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyLargeMedium;
  final TextStyle bodyLargeSemiBold;
  final TextStyle bodyMedium;
  final TextStyle bodyMediumMed;
  final TextStyle bodyMediumSemiBold;
  final TextStyle bodyCaption;
  final TextStyle bodyCaptionMedium;
  final TextStyle bodyCaptionSemiBold;
  final TextStyle bodySmall;
  final TextStyle bodySmallMedium;
  final TextStyle bodySmallSemiBold;

  const AppTextTheme({required this.headingLarge, required this.headingMedium, required this.headingSmall, required this.titleLarge, required this.titleMedium, required this.titleSmall, required this.bodyLarge, required this.bodyLargeMedium, required this.bodyLargeSemiBold, required this.bodyMedium, required this.bodyMediumMed, required this.bodyMediumSemiBold, required this.bodyCaption, required this.bodyCaptionMedium, required this.bodyCaptionSemiBold, required this.bodySmall, required this.bodySmallMedium, required this.bodySmallSemiBold});

  static final AppTextTheme lightTextTheme = AppTextTheme(
    headingLarge: AppTextStyles.f24w600.copyWith(color: AppColors.black),
    headingMedium: AppTextStyles.f20w600.copyWith(color: AppColors.black),
    headingSmall: AppTextStyles.f18w600.copyWith(color: AppColors.black),
    titleLarge: AppTextStyles.f16w600.copyWith(color: AppColors.black),
    titleMedium: AppTextStyles.f14w600.copyWith(color: AppColors.black),
    titleSmall: AppTextStyles.f12w600.copyWith(color: AppColors.black),
    bodyLarge: AppTextStyles.f16w400.copyWith(color: AppColors.black),
    bodyLargeMedium: AppTextStyles.f16w500.copyWith(color: AppColors.black),
    bodyLargeSemiBold: AppTextStyles.f16w600.copyWith(color: AppColors.black),
    bodyMedium: AppTextStyles.f14w400.copyWith(color: AppColors.black),
    bodyMediumMed: AppTextStyles.f14w500.copyWith(color: AppColors.black),
    bodyMediumSemiBold: AppTextStyles.f14w600.copyWith(color: AppColors.black),
    bodyCaption: AppTextStyles.f12w400.copyWith(color: AppColors.black),
    bodyCaptionMedium: AppTextStyles.f12w500.copyWith(color: AppColors.black),
    bodyCaptionSemiBold: AppTextStyles.f12w600.copyWith(color: AppColors.black),
    bodySmall: AppTextStyles.f10w400.copyWith(color: AppColors.black),
    bodySmallMedium: AppTextStyles.f10w500.copyWith(color: AppColors.black),
    bodySmallSemiBold: AppTextStyles.f10w600.copyWith(color: AppColors.black),
  );

  static final AppTextTheme darkTextTheme = AppTextTheme(
    headingLarge: AppTextStyles.f24w600.copyWith(color: AppColors.white),
    headingMedium: AppTextStyles.f20w600.copyWith(color: AppColors.white),
    headingSmall: AppTextStyles.f18w600.copyWith(color: AppColors.white),
    titleLarge: AppTextStyles.f16w600.copyWith(color: AppColors.white),
    titleMedium: AppTextStyles.f14w600.copyWith(color: AppColors.white),
    titleSmall: AppTextStyles.f12w600.copyWith(color: AppColors.white),
    bodyLarge: AppTextStyles.f16w400.copyWith(color: AppColors.white),
    bodyLargeMedium: AppTextStyles.f16w500.copyWith(color: AppColors.white),
    bodyLargeSemiBold: AppTextStyles.f16w600.copyWith(color: AppColors.white),
    bodyMedium: AppTextStyles.f14w400.copyWith(color: AppColors.white),
    bodyMediumMed: AppTextStyles.f14w500.copyWith(color: AppColors.white),
    bodyMediumSemiBold: AppTextStyles.f14w600.copyWith(color: AppColors.white),
    bodyCaption: AppTextStyles.f12w400.copyWith(color: AppColors.white),
    bodyCaptionMedium: AppTextStyles.f12w500.copyWith(color: AppColors.white),
    bodyCaptionSemiBold: AppTextStyles.f12w600.copyWith(color: AppColors.white),
    bodySmall: AppTextStyles.f10w400.copyWith(color: AppColors.white),
    bodySmallMedium: AppTextStyles.f10w500.copyWith(color: AppColors.white),
    bodySmallSemiBold: AppTextStyles.f10w600.copyWith(color: AppColors.white),
  );

  @override
  AppTextTheme copyWith({TextStyle? headingLarge, TextStyle? headingMedium, TextStyle? headingSmall, TextStyle? titleLarge, TextStyle? titleMedium, TextStyle? titleSmall, TextStyle? bodyLarge, TextStyle? bodyLargeMedium, TextStyle? bodyLargeSemiBold, TextStyle? bodyMedium, TextStyle? bodyMediumMed, TextStyle? bodyMediumSemiBold, TextStyle? bodyCaption, TextStyle? bodyCaptionMedium, TextStyle? bodyCaptionSemiBold, TextStyle? bodySmall, TextStyle? bodySmallMedium, TextStyle? bodySmallSemiBold}) {
    return AppTextTheme(headingLarge: headingLarge ?? this.headingLarge, headingMedium: headingMedium ?? this.headingMedium, headingSmall: headingSmall ?? this.headingSmall, titleLarge: titleLarge ?? this.titleLarge, titleMedium: titleMedium ?? this.titleMedium, titleSmall: titleSmall ?? this.titleSmall, bodyLarge: bodyLarge ?? this.bodyLarge, bodyLargeMedium: bodyLargeMedium ?? this.bodyLargeMedium, bodyLargeSemiBold: bodyLargeSemiBold ?? this.bodyLargeSemiBold, bodyMedium: bodyMedium ?? this.bodyMedium, bodyMediumMed: bodyMediumMed ?? this.bodyMediumMed, bodyMediumSemiBold: bodyMediumSemiBold ?? this.bodyMediumSemiBold, bodyCaption: bodyCaption ?? this.bodyCaption, bodyCaptionMedium: bodyCaptionMedium ?? this.bodyCaptionMedium, bodyCaptionSemiBold: bodyCaptionSemiBold ?? this.bodyCaptionSemiBold, bodySmall: bodySmall ?? this.bodySmall, bodySmallMedium: bodySmallMedium ?? this.bodySmallMedium, bodySmallSemiBold: bodySmallSemiBold ?? this.bodySmallSemiBold);
  }

  @override
  AppTextTheme lerp(ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(headingLarge: TextStyle.lerp(headingLarge, other.headingLarge, t)!, headingMedium: TextStyle.lerp(headingMedium, other.headingMedium, t)!, headingSmall: TextStyle.lerp(headingSmall, other.headingSmall, t)!, titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!, titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!, titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!, bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!, bodyLargeMedium: TextStyle.lerp(bodyLargeMedium, other.bodyLargeMedium, t)!, bodyLargeSemiBold: TextStyle.lerp(bodyLargeSemiBold, other.bodyLargeSemiBold, t)!, bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!, bodyMediumMed: TextStyle.lerp(bodyMediumMed, other.bodyMediumMed, t)!, bodyMediumSemiBold: TextStyle.lerp(bodyMediumSemiBold, other.bodyMediumSemiBold, t)!, bodyCaption: TextStyle.lerp(bodyCaption, other.bodyCaption, t)!, bodyCaptionMedium: TextStyle.lerp(bodyCaptionMedium, other.bodyCaptionMedium, t)!, bodyCaptionSemiBold: TextStyle.lerp(bodyCaptionSemiBold, other.bodyCaptionSemiBold, t)!, bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!, bodySmallMedium: TextStyle.lerp(bodySmallMedium, other.bodySmallMedium, t)!, bodySmallSemiBold: TextStyle.lerp(bodySmallSemiBold, other.bodySmallSemiBold, t)!);
  }
}
