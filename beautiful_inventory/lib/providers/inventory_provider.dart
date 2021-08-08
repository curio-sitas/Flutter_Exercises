import 'package:beautiful_inventory/models/inventory.dart';
import 'package:beautiful_inventory/providers/item_provider.dart';
import 'package:flutter/material.dart';

class InventoryProvider extends ChangeNotifier {
  Inventory inv = Inventory("");
  List<ItemProvider> items = [];
  InventoryProvider(String name) {
    inv = Inventory(name);
  }

  void addItem(String name, int count) {
    items.add(ItemProvider(name, count));
    notifyListeners();
  }

  void removeItem(int index) {
    if (items.isEmpty) {
      return;
    }
    items.removeAt(index);
    notifyListeners();
  }

  String get name => inv.name;
  set name(String name) {
    inv.name = name;
    notifyListeners();
  }

  int get itemCount => items.length;
}
