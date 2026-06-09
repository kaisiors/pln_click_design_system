import 'package:flutter/material.dart';
import 'package:pln_click_design_system/pln_click_design_system.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  static final String _package = 'pln_click_design_system';

  static double _height(double lineHeight, double fontSize) {
    return lineHeight / fontSize;
  }

  static final TextStyle _textStyle = TextStyle(package: _package, fontFamily: AppFonts.primary);

  static TextStyle f10w400 = _textStyle.copyWith(fontSize: AppFontSize.xxs, fontWeight: AppFontWeight.regular);
  static TextStyle f10w500 = _textStyle.copyWith(fontSize: AppFontSize.xxs, fontWeight: AppFontWeight.medium);
  static TextStyle f10w600 = _textStyle.copyWith(fontSize: AppFontSize.xxs, fontWeight: AppFontWeight.semibold);
  static TextStyle f10w700 = _textStyle.copyWith(fontSize: AppFontSize.xxs, fontWeight: AppFontWeight.bold);

  static TextStyle f12w400 = _textStyle.copyWith(fontSize: AppFontSize.xs, fontWeight: AppFontWeight.regular);
  static TextStyle f12w500 = _textStyle.copyWith(fontSize: AppFontSize.xs, fontWeight: AppFontWeight.medium);
  static TextStyle f12w600 = _textStyle.copyWith(fontSize: AppFontSize.xs, fontWeight: AppFontWeight.semibold);
  static TextStyle f12w700 = _textStyle.copyWith(fontSize: AppFontSize.xs, fontWeight: AppFontWeight.bold);

  static TextStyle f14w400 = _textStyle.copyWith(fontSize: AppFontSize.sm, fontWeight: AppFontWeight.regular);
  static TextStyle f14w500 = _textStyle.copyWith(fontSize: AppFontSize.sm, fontWeight: AppFontWeight.medium);
  static TextStyle f14w600 = _textStyle.copyWith(fontSize: AppFontSize.sm, fontWeight: AppFontWeight.semibold);
  static TextStyle f14w700 = _textStyle.copyWith(fontSize: AppFontSize.sm, fontWeight: AppFontWeight.bold);

  static TextStyle f16w400 = _textStyle.copyWith(fontSize: AppFontSize.md, fontWeight: AppFontWeight.regular);
  static TextStyle f16w500 = _textStyle.copyWith(fontSize: AppFontSize.md, fontWeight: AppFontWeight.medium);
  static TextStyle f16w600 = _textStyle.copyWith(fontSize: AppFontSize.md, fontWeight: AppFontWeight.semibold);
  static TextStyle f16w700 = _textStyle.copyWith(fontSize: AppFontSize.md, fontWeight: AppFontWeight.bold);

  static TextStyle f18w400 = _textStyle.copyWith(fontSize: AppFontSize.lg, fontWeight: AppFontWeight.regular);
  static TextStyle f18w500 = _textStyle.copyWith(fontSize: AppFontSize.lg, fontWeight: AppFontWeight.medium);
  static TextStyle f18w600 = _textStyle.copyWith(fontSize: AppFontSize.lg, fontWeight: AppFontWeight.semibold);
  static TextStyle f18w700 = _textStyle.copyWith(fontSize: AppFontSize.lg, fontWeight: AppFontWeight.bold);

  static TextStyle f20w400 = _textStyle.copyWith(fontSize: AppFontSize.xl, fontWeight: AppFontWeight.regular);
  static TextStyle f20w500 = _textStyle.copyWith(fontSize: AppFontSize.xl, fontWeight: AppFontWeight.medium);
  static TextStyle f20w600 = _textStyle.copyWith(fontSize: AppFontSize.xl, fontWeight: AppFontWeight.semibold);
  static TextStyle f20w700 = _textStyle.copyWith(fontSize: AppFontSize.xl, fontWeight: AppFontWeight.bold);

  static TextStyle f24w400 = _textStyle.copyWith(fontSize: AppFontSize.xxl, fontWeight: AppFontWeight.regular);
  static TextStyle f24w500 = _textStyle.copyWith(fontSize: AppFontSize.xxl, fontWeight: AppFontWeight.medium);
  static TextStyle f24w600 = _textStyle.copyWith(fontSize: AppFontSize.xxl, fontWeight: AppFontWeight.semibold);
  static TextStyle f24w700 = _textStyle.copyWith(fontSize: AppFontSize.xxl, fontWeight: AppFontWeight.bold);
}
