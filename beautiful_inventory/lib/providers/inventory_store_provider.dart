import 'package:flutter/material.dart';

import 'inventory_provider.dart';

class InventoryStoreProvider extends ChangeNotifier {
  List<InventoryProvider> inventories = [];

  void createInventory(String name) {
    inventories.add(InventoryProvider(name));
    notifyListeners();
  }

  void removeInventory(int index) {
    if (inventories.isEmpty) {
      return;
    }
    inventories.removeAt(index);
    notifyListeners();
  }
}
