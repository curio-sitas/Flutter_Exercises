import 'package:beautiful_inventory/models/item.dart';
import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  Item item = Item("Void", 0);
  ItemProvider(String name, int count) {
    item = Item(name, count);
  }

  void addOne() {
    item.count++;
    notifyListeners();
  }

  void addTen() {
    item.count += 10;
    notifyListeners();
  }

  void removeOne() {
    if (item.count <= 0) {
      return;
    }
    item.count--;
    notifyListeners();
  }

  void removeTen() {
    if (item.count <= 10) {
      item.count = 0;
    } else {
      item.count -= 10;
    }
    notifyListeners();
  }

  String get name => item.name;
  set name(String name) {
    item.name = name;
    notifyListeners();
  }

  int get count => item.count;
}
