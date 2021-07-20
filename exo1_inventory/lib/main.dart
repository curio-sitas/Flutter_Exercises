import 'package:exo1_inventory/pages/inventory_page/inventory_page.dart';
import 'package:flutter/material.dart';

import 'pages/config_page/config_page.dart';
import 'pages/home_page/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartInv',
      theme: ThemeData(
        //TODO: personalise theme
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        'inv_page': (BuildContext context) => InventoryPage(),
        'config_page': (BuildContext context) => ConfigPage(),
      },
    );
  }
}
