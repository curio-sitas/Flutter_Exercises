import 'package:beautiful_inventory/providers/inventory_provider.dart';
import 'package:beautiful_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddItemDialog extends AlertDialog {
  final TextEditingController itemNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryProvider>(builder: (context, inventory, child) {
      return AlertDialog(
          content: Stack(
        children: <Widget>[
          Form(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                  controller: itemNameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.wallet_travel),
                    labelText: 'Item Name',
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
                    inventory.addItem(itemNameController.text, 0);
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
