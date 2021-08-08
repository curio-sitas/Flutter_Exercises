import 'package:beautiful_inventory/pages/home_page/widgets/add_inventory_dialog.dart';
import 'package:beautiful_inventory/pages/home_page/widgets/inventory_card_widget.dart';
import 'package:beautiful_inventory/providers/inventory_store_provider.dart';
import 'package:beautiful_inventory/shared/widgets/main_appbar_widget.dart';
import 'package:beautiful_inventory/shared/widgets/secondary_appbar_widget.dart';
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
              SecondaryAppBar(
                  icon: Icons.inventory_2,
                  title: "Inventories",
                  actions: [
                    IconButton(
                        onPressed: () => {
                              /*inventories.createInventory("Test")*/
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AddInventoryDialog();
                                  })
                            },
                        icon: const Icon(Icons.add))
                  ]),
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
