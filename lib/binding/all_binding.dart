import 'package:get/get.dart';
import 'package:template_app/controller/counter_controller.dart';
import 'package:template_app/controller/setting_controller.dart';
import 'package:template_app/controller/setting_language_controller.dart';

class AllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
    Get.lazyPut(() => SettingController());
    Get.lazyPut(() => SettingLanguageController());

    /// more binding here
  }
}