import 'package:exo1_inventory/providers/inventory_provider.dart';
import 'package:exo1_inventory/providers/item_provider.dart';
import 'package:exo1_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  ItemCard({required this.index});
  final int index;
  final TextEditingController nameController = TextEditingController();

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
            child: Column(children: [
              Row(
                children: [
                  const Spacer(),
                  Text(
                    item.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () => {inventory.removeItem(index)},
                      icon: const Icon(Icons.close))
                ],
              ),
              Row(children: [
                const Spacer(),
                IconButton(
                    onPressed: () => {item.removeTen()},
                    icon: const Icon(Icons.skip_previous)),
                IconButton(
                    onPressed: () => {item.removeOne()},
                    icon: const Icon(Icons.arrow_left_sharp)),
                Text(item.count.toString()),
                IconButton(
                    onPressed: () => {item.addOne()},
                    icon: const Icon(Icons.arrow_right_sharp)),
                IconButton(
                    onPressed: () => {item.addTen()},
                    icon: const Icon(Icons.skip_next)),
                const Spacer(),
                IconButton(onPressed: () => {}, icon: const Icon(Icons.edit)),
              ])
            ])),
      );
    });
  }
}
