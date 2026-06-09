import 'package:flutter/material.dart';

/// Define raw tokens
abstract class AppPalette {
  AppPalette._();

  static const Color neutral = Color(0xFFFFFFFF);
  static const Color neutral50 = Color(0xFFF7F7F8);
  static const Color neutral100 = Color(0xFFEFF0F1);
  static const Color neutral150 = Color(0xFFE7E8EB);
  static const Color neutral200 = Color(0xFFDFE1E4);
  static const Color neutral300 = Color(0xFFCFD1D6);
  static const Color neutral400 = Color(0xFFBFC2C9);
  static const Color neutral500 = Color(0xFFAFB3BB);
  static const Color neutral600 = Color(0xFF91959C);
  static const Color neutral700 = Color(0xFF73767C);
  static const Color neutral800 = Color(0xFF56585D);
  static const Color neutral850 = Color(0xFF47494D);
  static const Color neutral900 = Color(0xFF38393D);
  static const Color neutral950 = Color(0xFF292A2E);
  static const Color neutral1000 = Color(0xFF000000);

  static const Color primary50 = Color(0xFFE6F6F8);
  static const Color primary100 = Color(0xFFCCECF1);
  static const Color primary150 = Color(0xFFB3E3EA);
  static const Color primary200 = Color(0xFF99DAE3);
  static const Color primary300 = Color(0xFF66C7D5);
  static const Color primary400 = Color(0xFF33B5C7);
  static const Color primary500 = Color(0xFF00A2B9);
  static const Color primary600 = Color(0xFF008294);
  static const Color primary700 = Color(0xFF00616F);
  static const Color primary800 = Color(0xFF00414A);
  static const Color primary850 = Color(0xFF003138);
  static const Color primary900 = Color(0xFF002025);
  static const Color primary950 = Color(0xFF001013);

  static const Color green50 = Color(0xFFE6F6F1);
  static const Color green100 = Color(0xFFCCEEE4);
  static const Color green150 = Color(0xFFB3E5D6);
  static const Color green200 = Color(0xFF99DCC8);
  static const Color green300 = Color(0xFF66CBAD);
  static const Color green400 = Color(0xFF33B991);
  static const Color green500 = Color(0xFF00A876);
  static const Color green600 = Color(0xFF00865E);
  static const Color green700 = Color(0xFF006547);
  static const Color green800 = Color(0xFF00432F);
  static const Color green850 = Color(0xFF003223);
  static const Color green900 = Color(0xFF002218);
  static const Color green950 = Color(0xFF00110C);

  static const Color yellow50 = Color(0xFFFFF8E9);
  static const Color yellow100 = Color(0xFFFFF1D2);
  static const Color yellow150 = Color(0xFFFFEABC);
  static const Color yellow200 = Color(0xFFFFE3A5);
  static const Color yellow300 = Color(0xFFFFD479);
  static const Color yellow400 = Color(0xFFFFC64C);
  static const Color yellow500 = Color(0xFFFFB81F);
  static const Color yellow600 = Color(0xFFCC9319);
  static const Color yellow700 = Color(0xFF996E13);
  static const Color yellow800 = Color(0xFF664A0C);
  static const Color yellow850 = Color(0xFF4D3709);
  static const Color yellow900 = Color(0xFF332506);
  static const Color yellow950 = Color(0xFF1A1203);

  static const Color slate50 = Color(0xFFF8FAFC);
  static const Color slate100 = Color(0xFFF1F5F9);
  static const Color slate200 = Color(0xFFE2E8F0);
  static const Color slate300 = Color(0xFFCAD5E2);
  static const Color slate400 = Color(0xFF90A1B9);
  static const Color slate500 = Color(0xFF62748E);
  static const Color slate600 = Color(0xFF45556C);
  static const Color slate700 = Color(0xFF314158);
  static const Color slate800 = Color(0xFF1D293D);
  static const Color slate900 = Color(0xFF0F172B);
  static const Color slate950 = Color(0xFF020618);
  static const Color slate1000 = Color(0xFF06141C);

  static const Color teal50 = Color(0xFFF0FBFB);
  static const Color teal100 = Color(0xFFD9F4F3);
  static const Color teal200 = Color(0xFFB8E9E9);
  static const Color teal300 = Color(0xFF86D8DA);
  static const Color teal400 = Color(0xFF4EBEC2);
  static const Color teal450 = Color(0xFF28BFC9);
  static const Color teal500 = Color(0xFF36AEB4);
  static const Color teal550 = Color(0xFF22ADBC);
  static const Color teal600 = Color(0xFF2D848D);
  static const Color teal700 = Color(0xFF2A6B74);
  static const Color teal800 = Color(0xFF2A5860);
  static const Color teal900 = Color(0xFF274A52);
  static const Color teal950 = Color(0xFF153037);

  static const Color sky50 = Color(0xFFF2F8FD);
  static const Color sky100 = Color(0xFFE4F0FA);
  static const Color sky200 = Color(0xFFC3E0F4);
  static const Color sky300 = Color(0xFF8FC8EA);
  static const Color sky400 = Color(0xFF53ABDD);
  static const Color sky500 = Color(0xFF2C90CB);
  static const Color sky600 = Color(0xFF1C6EA4);
  static const Color sky700 = Color(0xFF195D8B);
  static const Color sky750 = Color(0xFF234E6B);
  static const Color sky800 = Color(0xFF184F74);
  static const Color sky900 = Color(0xFF1A4260);
  static const Color sky950 = Color(0xFF112A40);
  static const Color sky1000 = Color(0xFF022B46);
  static const Color sky1050 = Color(0xFF000D15);

  static const Color lemon50 = Color(0xFFFBFCEA);
  static const Color lemon100 = Color(0xFFFAFAC7);
  static const Color lemon200 = Color(0xFFF4F07A);
  static const Color lemon300 = Color(0xFFF0E554);
  static const Color lemon400 = Color(0xFFEAD425);
  static const Color lemon500 = Color(0xFFDABC18);
  static const Color lemon600 = Color(0xFFBC9412);
  static const Color lemon700 = Color(0xFF966C12);
  static const Color lemon800 = Color(0xFF7D5616);
  static const Color lemon900 = Color(0xFF6A4619);
  static const Color lemon950 = Color(0xFF3E260A);

  static const Color blue50 = Color(0xFFEFF7FF);
  static const Color blue100 = Color(0xFFDBEBFE);
  static const Color blue200 = Color(0xFFBEDDFF);
  static const Color blue300 = Color(0xFF92C8FE);
  static const Color blue400 = Color(0xFF5EAAFC);
  static const Color blue500 = Color(0xFF3887F9);
  static const Color blue600 = Color(0xFF2269EE);
  static const Color blue700 = Color(0xFF1A53DB);
  static const Color blue800 = Color(0xFF1C44B1);
  static const Color blue900 = Color(0xFF1D3D8B);
  static const Color blue950 = Color(0xFF172858);
  static const Color blue1000 = Color(0xFF004573);

  static const Color red50 = Color(0xFFFFF1F1);
  static const Color red100 = Color(0xFFFFE0E0);
  static const Color red200 = Color(0xFFFFC7C8);
  static const Color red300 = Color(0xFFFFA0A2);
  static const Color red400 = Color(0xFFFF696B);
  static const Color red500 = Color(0xFFF93A3D);
  static const Color red600 = Color(0xFFE71B1E);
  static const Color red700 = Color(0xFFCF1417);
  static const Color red800 = Color(0xFFA01416);
  static const Color red900 = Color(0xFF851719);
  static const Color red950 = Color(0xFF480708);

  static const Color orange50 = Color(0xFFFEF4F2);
  static const Color orange100 = Color(0xFFFFE6E1);
  static const Color orange200 = Color(0xFFFFD1C8);
  static const Color orange300 = Color(0xFFFFB1A1);
  static const Color orange400 = Color(0xFFFD846C);
  static const Color orange500 = Color(0xFFF65C3D);
  static const Color orange600 = Color(0xFFDB3B1B);
  static const Color orange700 = Color(0xFFBF3216);
  static const Color orange800 = Color(0xFF9E2D16);
  static const Color orange900 = Color(0xFF832B19);
  static const Color orange950 = Color(0xFF471208);

  static const Color purple50 = Color(0xFFFAF5FF);
  static const Color purple100 = Color(0xFFF3E8FF);
  static const Color purple200 = Color(0xFFE9D4FF);
  static const Color purple300 = Color(0xFFDAB2FF);
  static const Color purple400 = Color(0xFFC27AFF);
  static const Color purple500 = Color(0xFFAD46FF);
  static const Color purple600 = Color(0xFF9810FA);
  static const Color purple700 = Color(0xFF8200DB);
  static const Color purple800 = Color(0xFF6E11B0);
  static const Color purple900 = Color(0xFF59168B);
  static const Color purple950 = Color(0xFF3C0366);

  static const Color cyan200 = Color(0xFF0AFFF3);
  static const Color cyan400 = Color(0xFF00AFFF);
}
