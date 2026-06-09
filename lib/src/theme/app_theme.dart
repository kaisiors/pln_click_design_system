import 'package:flutter/material.dart';
import 'package:pln_click_design_system/pln_click_design_system.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    sliderTheme: const SliderThemeData(overlappingShapeStrokeColor: AppColors.black, overlayColor: AppColors.white, thumbColor: AppColors.tosca, activeTrackColor: AppColors.tosca),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.tosca,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Roboto'),
    ),
    buttonTheme: ButtonThemeData(
      padding: const EdgeInsets.symmetric(vertical: 10),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      buttonColor: AppColors.tosca,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        minimumSize: const Size(120, 32),
        backgroundColor: AppColors.tosca,
        foregroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.disabled,
        disabledForegroundColor: AppColors.white.withValues(alpha: 0.75),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.greyMedium,
        disabledForegroundColor: AppColors.white.withValues(alpha: 0.75),
        elevation: 0,
        textStyle: const TextStyle(color: AppColors.white),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: const BorderSide(color: AppColors.tosca),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: AppRadius.rounded8,
        borderSide: const BorderSide(color: AppColors.greySoft),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppRadius.rounded8,
        borderSide: const BorderSide(color: AppColors.toscaLight),
      ),
      hintStyle: TextStyle(color: AppColors.greyMedium),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: MaterialColor(AppColors.tosca.toARGB32(), const <int, Color>{50: AppColors.tosca, 100: AppColors.tosca, 200: AppColors.tosca, 300: AppColors.tosca, 400: AppColors.tosca, 500: AppColors.tosca, 600: AppColors.tosca, 700: AppColors.tosca, 800: AppColors.tosca, 900: AppColors.tosca})).copyWith(surface: AppColors.white),
    primaryTextTheme: TextTheme(bodyLarge: AppTextTheme.lightTextTheme.bodyLarge, bodyMedium: AppTextTheme.lightTextTheme.bodyMedium, bodySmall: AppTextTheme.lightTextTheme.bodySmall, displayLarge: AppTextTheme.lightTextTheme.headingLarge, displayMedium: AppTextTheme.lightTextTheme.headingMedium, displaySmall: AppTextTheme.lightTextTheme.headingSmall, headlineLarge: AppTextTheme.lightTextTheme.headingLarge, headlineMedium: AppTextTheme.lightTextTheme.headingMedium, headlineSmall: AppTextTheme.lightTextTheme.headingSmall, labelLarge: AppTextTheme.lightTextTheme.bodyMediumSemiBold, labelMedium: AppTextTheme.lightTextTheme.bodyCaptionMedium, labelSmall: AppTextTheme.lightTextTheme.bodySmallMedium, titleLarge: AppTextTheme.lightTextTheme.titleLarge, titleMedium: AppTextTheme.lightTextTheme.titleMedium, titleSmall: AppTextTheme.lightTextTheme.titleSmall),
    textTheme: TextTheme(bodyLarge: AppTextTheme.lightTextTheme.bodyLarge, bodyMedium: AppTextTheme.lightTextTheme.bodyMedium, bodySmall: AppTextTheme.lightTextTheme.bodySmall, displayLarge: AppTextTheme.lightTextTheme.headingLarge, displayMedium: AppTextTheme.lightTextTheme.headingMedium, displaySmall: AppTextTheme.lightTextTheme.headingSmall, headlineLarge: AppTextTheme.lightTextTheme.headingLarge, headlineMedium: AppTextTheme.lightTextTheme.headingMedium, headlineSmall: AppTextTheme.lightTextTheme.headingSmall, labelLarge: AppTextTheme.lightTextTheme.bodyMediumSemiBold, labelMedium: AppTextTheme.lightTextTheme.bodyCaptionMedium, labelSmall: AppTextTheme.lightTextTheme.bodySmallMedium, titleLarge: AppTextTheme.lightTextTheme.titleLarge, titleMedium: AppTextTheme.lightTextTheme.titleMedium, titleSmall: AppTextTheme.lightTextTheme.titleSmall),
    //   appBarTheme: AppBarThemeData(
    //     backgroundColor: AppColors.background,
    //     centerTitle: false,
    //     elevation: 0,
    //     iconTheme: IconThemeData(color: AppColors.icon),
    //     scrolledUnderElevation: 0,
    //     titleSpacing: 8,
    //     titleTextStyle: AppTextTheme.lightTextTheme.headingSmall,
    //   ),
    //   buttonTheme: ButtonThemeData(
    //     padding: const EdgeInsets.symmetric(vertical: 10),
    //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //     buttonColor: AppColors.primaryPressed,
    //     shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded8),
    //   ),
    //   cardTheme: CardThemeData(
    //     shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded12),
    //   ),
    //   checkboxTheme: CheckboxThemeData(
    //     checkColor: WidgetStateProperty.resolveWith((states) {
    //       if (states.contains(WidgetState.selected)) {
    //         return AppColors.white;
    //       } else {
    //         return AppColors.transparent;
    //       }
    //     }),
    //     fillColor: WidgetStateProperty.resolveWith((states) {
    //       if (states.contains(WidgetState.selected)) {
    //         return AppColors.primary;
    //       } else {
    //         return AppColors.white;
    //       }
    //     }),
    //     side: BorderSide(color: AppColors.borderOnColorPrimary),
    //   ),
    //   colorScheme: ColorScheme.fromSeed(seedColor: AppColors.tosca),
    //   dividerTheme: DividerThemeData(color: AppColors.border),
    //   elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //       backgroundColor: AppColors.primaryPressed,
    //       disabledBackgroundColor: AppColors.disabled,
    //       disabledForegroundColor: AppColors.textDisabled,
    //       elevation: 0,
    //       foregroundColor: AppColors.textOnColorHeading,
    //       minimumSize: const Size(120, 32),
    //       padding: EdgeInsets.symmetric(
    //         horizontal: AppSizes.s24,
    //         vertical: AppSizes.s12,
    //       ),
    //       shadowColor: AppColors.transparent,
    //       shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded8),
    //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //       textStyle: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
    //     ),
    //   ),
    //   extensions: <ThemeExtension<dynamic>>[AppTextTheme.lightTextTheme],
    //   fontFamily: AppFonts.primary,
    //   iconButtonTheme: IconButtonThemeData(
    //     style: IconButton.styleFrom(
    //       iconSize: AppSizes.s24,
    //       padding: EdgeInsets.zero,
    //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //       visualDensity: VisualDensity.compact,
    //     ),
    //   ),
    //   inputDecorationTheme: InputDecorationThemeData(
    //     disabledBorder: OutlineInputBorder(
    //       borderRadius: AppRadius.rounded8,
    //       borderSide: BorderSide(color: AppColors.disabled),
    //     ),
    //     enabledBorder: OutlineInputBorder(
    //       borderRadius: AppRadius.rounded8,
    //       borderSide: BorderSide(color: AppColors.tosca),
    //     ),
    //     errorBorder: OutlineInputBorder(
    //       borderRadius: AppRadius.rounded8,
    //       borderSide: BorderSide(color: AppColors.borderError),
    //     ),
    //     errorStyle: AppTextTheme.lightTextTheme.bodyCaption.copyWith(
    //       color: AppColors.textError,
    //     ),
    //     fillColor: Colors.white,
    //     filled: true,
    //     floatingLabelBehavior: FloatingLabelBehavior.auto,
    //     focusColor: AppColors.primary,
    //     focusedBorder: OutlineInputBorder(
    //       borderRadius: AppRadius.rounded8,
    //       borderSide: BorderSide(color: AppColors.tosca),
    //     ),
    //     focusedErrorBorder: OutlineInputBorder(
    //       borderRadius: AppRadius.rounded8,
    //       borderSide: BorderSide(color: AppColors.borderError),
    //     ),
    //     helperStyle: AppTextTheme.lightTextTheme.bodyCaption.copyWith(
    //       color: AppColors.textPlaceholder,
    //     ),
    //     hintStyle: AppTextTheme.lightTextTheme.bodyMedium.copyWith(
    //       color: AppColors.textPlaceholder,
    //     ),
    //     isDense: true,
    //     labelStyle: AppTextTheme.lightTextTheme.bodyMedium.copyWith(
    //       color: AppColors.black,
    //     ),
    //   ),
    //   outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: OutlinedButton.styleFrom(
    //       backgroundColor: AppColors.white,
    //       disabledBackgroundColor: AppColors.disabled,
    //       disabledForegroundColor: AppColors.white.withValues(alpha: 0.75),
    //       elevation: 0,
    //       foregroundColor: AppColors.textPrimary,
    //       padding: EdgeInsets.symmetric(
    //         horizontal: AppSizes.s24,
    //         vertical: AppSizes.s12,
    //       ),
    //       shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded8),
    //       side: const BorderSide(color: AppColors.primary),
    //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //       textStyle: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
    //     ),
    //   ),
    //   primaryColor: AppColors.primaryPressed,
    // primaryTextTheme: TextTheme(
    //   bodyLarge: AppTextTheme.lightTextTheme.bodyLarge,
    //   bodyMedium: AppTextTheme.lightTextTheme.bodyMedium,
    //   bodySmall: AppTextTheme.lightTextTheme.bodySmall,
    //   displayLarge: AppTextTheme.lightTextTheme.headingLarge,
    //   displayMedium: AppTextTheme.lightTextTheme.headingMedium,
    //   displaySmall: AppTextTheme.lightTextTheme.headingSmall,
    //   headlineLarge: AppTextTheme.lightTextTheme.headingLarge,
    //   headlineMedium: AppTextTheme.lightTextTheme.headingMedium,
    //   headlineSmall: AppTextTheme.lightTextTheme.headingSmall,
    //   labelLarge: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
    //   labelMedium: AppTextTheme.lightTextTheme.bodyCaptionMedium,
    //   labelSmall: AppTextTheme.lightTextTheme.bodySmallMedium,
    //   titleLarge: AppTextTheme.lightTextTheme.titleLarge,
    //   titleMedium: AppTextTheme.lightTextTheme.titleMedium,
    //   titleSmall: AppTextTheme.lightTextTheme.titleSmall,
    // ),
    //   scaffoldBackgroundColor: AppColors.background,
    //   sliderTheme: const SliderThemeData(
    //     overlappingShapeStrokeColor: AppColors.black,
    //     overlayColor: AppColors.white,
    //     thumbColor: AppColors.primary,
    //     activeTrackColor: AppColors.primary,
    //   ),
    //   textButtonTheme: TextButtonThemeData(
    //     style: TextButton.styleFrom(
    //       foregroundColor: AppColors.textPrimary,
    //       minimumSize: Size.zero,
    //       padding: EdgeInsets.symmetric(
    //         horizontal: AppSizes.s8,
    //         vertical: AppSizes.s4,
    //       ),
    //       shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded8),
    //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //       textStyle: AppTextTheme.lightTextTheme.bodyCaptionSemiBold,
    //     ),
    //   ),
    // textTheme: TextTheme(
    //   bodyLarge: AppTextTheme.lightTextTheme.bodyLarge,
    //   bodyMedium: AppTextTheme.lightTextTheme.bodyMedium,
    //   bodySmall: AppTextTheme.lightTextTheme.bodySmall,
    //   displayLarge: AppTextTheme.lightTextTheme.headingLarge,
    //   displayMedium: AppTextTheme.lightTextTheme.headingMedium,
    //   displaySmall: AppTextTheme.lightTextTheme.headingSmall,
    //   headlineLarge: AppTextTheme.lightTextTheme.headingLarge,
    //   headlineMedium: AppTextTheme.lightTextTheme.headingMedium,
    //   headlineSmall: AppTextTheme.lightTextTheme.headingSmall,
    //   labelLarge: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
    //   labelMedium: AppTextTheme.lightTextTheme.bodyCaptionMedium,
    //   labelSmall: AppTextTheme.lightTextTheme.bodySmallMedium,
    //   titleLarge: AppTextTheme.lightTextTheme.titleLarge,
    //   titleMedium: AppTextTheme.lightTextTheme.titleMedium,
    //   titleSmall: AppTextTheme.lightTextTheme.titleSmall,
    // ),
    //   visualDensity: VisualDensity.adaptivePlatformDensity,
    //   useMaterial3: true,
  );
}
