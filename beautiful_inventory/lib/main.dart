import 'package:beautiful_inventory/providers/inventory_store_provider.dart';
import 'package:beautiful_inventory/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page/home_page.dart';
import 'utils/contants.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InventoryStoreProvider>(
        create: (context) => InventoryStoreProvider(),
        child: MaterialApp(
          title: kAppName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: kMainColor,
          ),
          home: HomePage(),
        ));
  }
}
