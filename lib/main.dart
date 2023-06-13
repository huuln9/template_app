import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/config/app_config.dart';
import 'package:template_app/config/route_config.dart';
import 'package:template_app/core/init_app.dart';

Future<void> main() async {
  await initApp();
  runApp(
    GetMaterialApp(
      color: Colors.grey.shade200,
      locale: AppConfig.locale,
      initialRoute: "/home",
      getPages: RouteConfig.routes,
    ),
  );
}
