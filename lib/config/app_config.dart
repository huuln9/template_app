import 'package:flutter/material.dart';
import 'package:template_app/util/app_util.dart';

class AppConfig {
  static const String storageBox = "template_app";

  static Locale get locale {
    return Locale(AppUtil().getLanguageCode());
  }

  static Color kPrimaryColor = Color(0xF5CCCC);
  static Color kPrimaryLightColor = Color(0xFFF1E6FF);
  static Color kTextColor = Color(0xFF3C4046);
  static Color kBackgroundColor = Color(0xFFF9F8FD);
  static double defaultPadding = 16.0;

  static MaterialColor buttonColor = MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
  50: Color(0xFFFEFDFD),
  100: Color(0xFFFDFAFA),
  200: Color(0xFFFBF7F7),
  300: Color(0xFFF9F3F3),
  400: Color(0xFFF8F1F1),
  500: Color(_mcgpalette0PrimaryValue),
  600: Color(0xFFF6ECEC),
  700: Color(0xFFF5E9E9),
  800: Color(0xFFF3E7E7),
  900: Color(0xFFF1E2E2),
  });
  static int _mcgpalette0PrimaryValue = 0xFFF7EEEE;

  static MaterialColor mcgpalette0Accent = MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static int _mcgpalette0AccentValue = 0xFFFFFFFF;

  static MaterialColor btncolor = MaterialColor(_btncolorPrimaryValue, <int, Color>{
    50: Color(0xFFFEF9F9),
    100: Color(0xFFFCF0F0),
    200: Color(0xFFFAE6E6),
    300: Color(0xFFF8DBDB),
    400: Color(0xFFF7D4D4),
    500: Color(_btncolorPrimaryValue),
    600: Color(0xFFF4C7C7),
    700: Color(0xFFF2C0C0),
    800: Color(0xFFF0B9B9),
    900: Color(0xFFEEADAD),
  });
  static int _btncolorPrimaryValue = 0xFFF5CCCC;

  static MaterialColor btncolorAccent = MaterialColor(_btncolorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_btncolorAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static int _btncolorAccentValue = 0xFFFFFFFF;
}
