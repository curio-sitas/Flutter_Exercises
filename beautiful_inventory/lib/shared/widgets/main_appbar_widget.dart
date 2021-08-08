import 'package:beautiful_inventory/utils/contants.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(
            children: const [Text(kAppName), Spacer(), Icon(Icons.polymer)]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
