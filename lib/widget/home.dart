import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/counter_controller.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';

class Home extends GetView<CounterController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("ung dung".tr)),
      body: Center(
        child: Obx(() => Text("${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
