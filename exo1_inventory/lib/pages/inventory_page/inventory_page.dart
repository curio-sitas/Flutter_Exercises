import 'package:exo1_inventory/providers/inventory_provider.dart';
import 'package:exo1_inventory/shared/widgets/main_appbar_widget.dart';
import 'package:exo1_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'item_card_widget.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryProvider>(builder: (context, inventory, child) {
      return Scaffold(
          appBar: MainAppBar(),
          body: Column(
            children: [
              AppBar(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.inventory_2,
                        color: kSecondaryColor,
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: const Text("Items")),
                      const Spacer()
                    ],
                  ),
                  actions: [
                    IconButton(
                        onPressed: () => {inventory.addItem("Test Item", 3)},
                        icon: const Icon(Icons.add))
                  ]),
              Expanded(
                  child: ListView.builder(
                shrinkWrap: true,
                itemCount: inventory.items.length,
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: inventory.items[index],
                    child: ItemCard(
                      index: index,
                    ),
                  );
                },
              ))
            ],
          ));
    });
  }
}
