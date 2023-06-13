import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key, this.index = 0}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      // fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: const Icon(Icons.home), label: "trang chu".tr, backgroundColor: Colors.pink[100]),
        BottomNavigationBarItem(icon: const Icon(Icons.local_florist_rounded), label: "san pham".tr, backgroundColor: Colors.pink[100]),
        BottomNavigationBarItem(icon: const Icon(Icons.shopping_cart), label: "gio hang".tr, backgroundColor: Colors.pink[100]),
        BottomNavigationBarItem(icon: const Icon(Icons.person), label: "tai khoan".tr, backgroundColor: Colors.pink[100]),
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
        Get.toNamed("/product");
        break;
      case 2:
        Get.toNamed("/cart");
        break;
      case 3:
        Get.toNamed("/profile");
        break;
      default:
        Get.offAllNamed("/home");
        break;
    }
  }
}
