import 'package:exo1_inventory/providers/inventory_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryPage extends StatelessWidget {
  final int index;
  final InventoryProvider inv;
  InventoryPage(this.index, this.inv);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () => {Navigator.of(context).pushNamed('config_page')},
          )
        ],
        title: Text('$index # ' + inv.inv.getName()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Here stock list',
            ),
            Icon(Icons.inventory_rounded)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add stock',
        child: Icon(Icons.add),
      ),
    );
  }
}
