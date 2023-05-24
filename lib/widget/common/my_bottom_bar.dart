import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key, this.index = 0}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      items: [
        BottomNavigationBarItem(icon: const Icon(Icons.home), label: "trang chu".tr),
        BottomNavigationBarItem(icon: const Icon(Icons.settings), label: "cai dat".tr),
      ],
      onTap: (int index) => _onTapItem(index: index),
    );
  }

  void _onTapItem({required int index}) {
    switch (index) {
      case 0:
        Get.offAllNamed("/home");
        break;
      case 1:
        Get.toNamed("/setting");
        break;
      default:
        Get.offAllNamed("/home");
        break;
    }
  }
}
