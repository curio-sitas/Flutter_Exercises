import 'package:exo1_inventory/pages/inventory_page/inventory_page.dart';
import 'package:exo1_inventory/providers/inventory_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class InventoryCard extends StatelessWidget {
  final int index;
  InventoryCard({required this.index});
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryProvider>(builder: (context, inv, child) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("#$index"),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Text(inv.inv.getName()),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InventoryPage(index, inv))),
            )
          ],
        ),
      );
    });
  }
}
