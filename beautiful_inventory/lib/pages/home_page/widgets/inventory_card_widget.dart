import 'package:beautiful_inventory/pages/inventory_page/inventory_page.dart';
import 'package:beautiful_inventory/providers/inventory_provider.dart';
import 'package:beautiful_inventory/providers/inventory_store_provider.dart';
import 'package:beautiful_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryCard extends StatelessWidget {
  const InventoryCard({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer2<InventoryStoreProvider, InventoryProvider>(
        builder: (context, invs, inventory, child) {
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ChangeNotifierProvider.value(
                                          value: inventory,
                                          child: InventoryPage(index: index))))
                        },
                    icon: const Icon(Icons.folder_open)),
                Text(inventory.itemCount.toString()),
                const Spacer(),
                Text(
                  inventory.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () => {invs.removeInventory(index)},
                    icon: const Icon(Icons.close))
              ],
            )),
      );
    });
  }
}
