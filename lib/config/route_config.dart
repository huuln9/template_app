import 'package:get/get.dart';
import 'package:template_app/binding/all_binding.dart';
import 'package:template_app/widget/home.dart';
import 'package:template_app/widget/setting.dart';
import 'package:template_app/widget/setting_language.dart';

class RouteConfig {
  static get routes {
    return [
      GetPage(name: "/home", page: () => const Home(), binding: AllBinding()),
      GetPage(name: "/setting", page: () => const Setting(), binding: AllBinding()),
      GetPage(name: "/setting/language", page: () => const SettingLanguage(), binding: AllBinding()),
    ];
  }
}
