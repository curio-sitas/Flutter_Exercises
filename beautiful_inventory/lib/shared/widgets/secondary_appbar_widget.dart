import 'package:beautiful_inventory/utils/contants.dart';
import 'package:flutter/material.dart';

class SecondaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData icon;
  final String title;
  final List<Widget>? actions;

  const SecondaryAppBar(
      {required this.icon, required this.title, required this.actions});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          children: [
            Icon(
              icon,
              color: kSecondaryColor,
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Text(title)),
            const Spacer()
          ],
        ),
        actions: actions);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
