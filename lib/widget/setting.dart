import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/setting_controller.dart';
import 'package:template_app/util/app_util.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';

class Setting extends GetView<SettingController> {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ngon ngu".tr)),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => Get.toNamed("/setting/language"),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Colors.black12)),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.language,
                  color: Colors.black54,
                  size: 24,
                ),
                title: Transform.translate(
                  offset: const Offset(-16, 0),
                  child: Text(
                    "ngon ngu".tr,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    Text(AppUtil().getLanguageName()),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const MyBottomBar(index: 1),
    );
  }
}
