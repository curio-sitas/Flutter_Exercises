import 'package:beautiful_inventory/pages/inventory_page/widgets/add_item_dialog.dart';
import 'package:beautiful_inventory/providers/inventory_provider.dart';
import 'package:beautiful_inventory/shared/widgets/main_appbar_widget.dart';
import 'package:beautiful_inventory/shared/widgets/secondary_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/item_card_widget.dart';

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
              SecondaryAppBar(
                  icon: Icons.wallet_travel,
                  title: "Items",
                  actions: [
                    IconButton(
                        onPressed: () => {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ChangeNotifierProvider.value(
                                        value: inventory,
                                        child: AddItemDialog());
                                  })
                            },
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
