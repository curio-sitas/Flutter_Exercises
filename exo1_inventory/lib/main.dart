import 'package:exo1_inventory/providers/inventory_store_provider.dart';
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
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
              appBar: AppBar(
                  title: Row(children: const [
                Text(kAppName),
                Spacer(),
                Icon(Icons.polymer)
              ])),
              body: HomePage()),
        ));
  }
}
