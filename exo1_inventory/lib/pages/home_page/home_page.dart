import 'package:exo1_inventory/pages/home_page/widgets/inventoy_card.dart';
import 'package:exo1_inventory/providers/inventorylist_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  late TextEditingController _textFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryListProvider>(
      builder: (context, invList, child) {
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () =>
                    {Navigator.of(context).pushNamed('config_page')},
              )
            ],
          ),
          body: invList.inventories.isEmpty
              ? Center(
                  child: Icon(
                    Icons.inventory_rounded,
                    size: 64,
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.only(left: 9, right: 9, bottom: 9),
                  shrinkWrap: true,
                  itemCount: invList.inventories.length,
                  itemBuilder: (context, _index) {
                    return ChangeNotifierProvider.value(
                      value: invList.inventories[_index],
                      child: InventoryCard(index: _index),
                    );
                  }),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('TextField in Dialog'),
                    content: TextField(
                      onChanged: (value) {},
                      controller: _textFieldController,
                      decoration:
                          InputDecoration(hintText: "Text Field in Dialog"),
                    ),
                    actions: <Widget>[
                      TextButton(
                          child: Text('CANCEL'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            invList.newInventory(_textFieldController.text);
                            Navigator.pop(context);
                          })
                    ],
                  );
                }),
            tooltip: 'Add inventory',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
