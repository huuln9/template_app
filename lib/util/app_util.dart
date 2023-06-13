import 'package:get_storage/get_storage.dart';
import 'package:template_app/config/app_config.dart';
import 'package:intl/intl.dart';

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

  static String formatDate({required DateTime time}) {
    return DateFormat('dd/MM/yyyy hh:mm').format(time);
  }
}