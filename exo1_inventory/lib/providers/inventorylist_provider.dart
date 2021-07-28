import 'package:flutter/material.dart';

import 'inventory_provider.dart';

class InventoryListProvider extends ChangeNotifier {
  List<InventoryProvider> inventories = [];

  void newInventory(String s) {
    inventories.add(new InventoryProvider(s));
    notifyListeners();
  }
}
