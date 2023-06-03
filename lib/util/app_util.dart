import 'package:get_storage/get_storage.dart';
import 'package:template_app/config/app_config.dart';
import 'package:template_app/controller/setting_language_controller.dart';
import 'package:get/get.dart';

class AppUtil {
  final List<dynamic> languages = [
    {
      "code": "vi",
      "name": "Tiếng Việt"
    },
    {
      "code": "en",
      "name": "English"
    }
  ];

  String getLanguageName() {
    String selectedLanguageCode = getLanguageCode();
    for (var language in languages) {
      if (selectedLanguageCode == language['code']) {
        return language['name'];
      }
    }
    return "Tiếng Việt";
  }

  String getLanguageCode() {
    return GetStorage(AppConfig.storageBox).read("languageCode") ?? "vi";
  }
}