import 'package:exo1_inventory/pages/home_page/widgets/inventory_card_widget.dart';
import 'package:exo1_inventory/providers/inventory_store_provider.dart';
import 'package:exo1_inventory/shared/widgets/main_appbar_widget.dart';
import 'package:exo1_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryStoreProvider>(
        builder: (context, inventories, child) {
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
                        child: const Text("Inventories")),
                    const Spacer()
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () => {inventories.createInventory("Test")},
                      icon: const Icon(Icons.add))
                ],
              ),
              Expanded(
                  child: ListView.builder(
                shrinkWrap: true,
                itemCount: inventories.inventories.length,
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: inventories.inventories[index],
                    child: InventoryCard(
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
