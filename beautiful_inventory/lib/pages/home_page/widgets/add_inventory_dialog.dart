import 'package:beautiful_inventory/providers/inventory_store_provider.dart';
import 'package:beautiful_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddInventoryDialog extends AlertDialog {
  final TextEditingController invNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryStoreProvider>(
        builder: (context, inventories, child) {
      return AlertDialog(
          content: Stack(
        children: <Widget>[
          Form(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                  controller: invNameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.inventory),
                    labelText: 'Inventory Name',
                  )),
              const VerticalDivider(
                indent: 10.0,
              ),
              Row(children: [
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    )),
                TextButton(
                  onPressed: () {
                    inventories.createInventory(invNameController.text);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(color: kMainColor, fontSize: 14),
                  ),
                )
              ])
            ],
          )),
        ],
      ));
    });
  }
}
