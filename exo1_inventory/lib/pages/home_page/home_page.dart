import 'dart:html';

import 'package:exo1_inventory/providers/inventory_provider.dart';
import 'package:exo1_inventory/providers/inventory_store_provider.dart';
import 'package:exo1_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryStoreProvider>(
        builder: (context, inventories, child) {
      return Scaffold(
        appBar: AppBar(
          title: HomeMenu(),
          actions: [
            IconButton(
                onPressed: () => {inventories.createInventory("Test")},
                icon: const Icon(Icons.add))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemCount: inventories.inventories.length,
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                  value: inventories.inventories[index],
                  child: TestWidget(
                    index: index,
                  ),
                );
              },
            ))
          ],
        ),
      );
    });
  }
}

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.inventory_2,
          color: kSecondaryColor,
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: const Text("Inventories")),
        const Spacer()
      ],
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryProvider>(builder: (context, inventory, child) {
      final InventoryStoreProvider invs = Provider.of(context);
      return Card(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Container(
            decoration: BoxDecoration(
                color: kCardColors,
                border: const Border(
                    left: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ))),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              children: [
                const Icon(Icons.folder_open),
                const Spacer(),
                Text(inventory.name),
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
