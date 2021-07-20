import 'package:exo1_inventory/pages/inventory_page/inventory_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Here inventory list',
            ),
            Icon(Icons.inventory_rounded)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.of(context).pushNamed('inv_page')},
        tooltip: 'Add inventory',
        child: Icon(Icons.add),
      ),
    );
  }
}
