import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/setting_language_controller.dart';
import 'package:template_app/util/app_util.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';

class SettingLanguage extends GetView<SettingLanguageController> {
  const SettingLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ngon ngu".tr)),
      body: ListView.builder(
        itemCount: AppUtil().languages.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Colors.black12)),
            ),
            child: Transform.translate(
              offset: const Offset(-16 + 8, 0),
              child: Obx(
                () => RadioListTile<String>(
                  title: Transform.translate(
                    offset: const Offset(-16 + 8, 0),
                    child: Text(AppUtil().languages[index]['name']),
                  ),
                  value: AppUtil().languages[index]['code'],
                  groupValue: controller.selectedLanguageCode.value,
                  onChanged: (value) => controller.changeLanguage(code: value ?? AppUtil().languages[index]['code']),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const MyBottomBar(index: 1),
    );
  }
}
