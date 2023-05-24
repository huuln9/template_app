import 'package:flutter/material.dart';
import 'package:template_app/util/app_util.dart';

class AppConfig {
  static const String storageBox = "template_app";

  static Locale get locale {
    return Locale(AppUtil().getLanguageCode());
  }
}
