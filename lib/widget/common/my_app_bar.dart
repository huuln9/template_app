import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.title, this.actions = const []}) : super(key: key);

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title), backgroundColor: Colors.pink[100], actions: actions);
  }



  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
