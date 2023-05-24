import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/binding/all_binding.dart';
import 'package:template_app/config/app_config.dart';
import 'package:template_app/core/init_app.dart';
import 'package:template_app/widget/home.dart';
import 'package:template_app/widget/setting.dart';
import 'package:template_app/widget/setting_language.dart';

Future<void> main() async {
  await initApp();
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      locale: AppConfig.locale,
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => const Home(), binding: AllBinding()),
        GetPage(name: "/setting", page: () => const Setting(), binding: AllBinding()),
        GetPage(name: "/setting/language", page: () => const SettingLanguage(), binding: AllBinding()),

      ],
    ),
  );
}
