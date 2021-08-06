import 'package:exo1_inventory/providers/inventory_provider.dart';
import 'package:exo1_inventory/providers/item_provider.dart';
import 'package:exo1_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer2<InventoryProvider, ItemProvider>(
        builder: (context, inventory, item, child) {
      return Card(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Container(
            decoration: const BoxDecoration(
                color: kSecondaryColor,
                border: Border(
                    left: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ))),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.green,
                    )),
                Text(
                  item.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Spacer(),
                Text(item.count.toString()),
                const Spacer(),
                IconButton(
                    onPressed: () => {inventory.removeItem(index)},
                    icon: const Icon(Icons.close))
              ],
            )),
      );
    });
  }
}
