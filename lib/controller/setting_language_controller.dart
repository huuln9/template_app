import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:template_app/config/app_config.dart';
import 'package:template_app/util/app_util.dart';

class SettingLanguageController extends GetxController {
  RxString selectedLanguageCode = 'vi'.obs;

  @override
  void onInit() {
    super.onInit();
    selectedLanguageCode.value = AppUtil().getLanguageCode();
  }

  void changeLanguage({required String code}) {
    selectedLanguageCode.value = code;
    var locale = Locale(selectedLanguageCode.value);
    Get.updateLocale(locale);
    GetStorage(AppConfig.storageBox).write("languageCode", code);
  }


}
