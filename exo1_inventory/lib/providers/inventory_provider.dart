import 'package:exo1_inventory/models/inventory.dart';
import 'package:flutter/material.dart';
import 'stock_provider.dart';

class InventoryProvider extends ChangeNotifier {
  Inventory inv = Inventory("", Colors.red);
  InventoryProvider(String s) {
    inv = new Inventory(s, Colors.red);
  }
  List<StockProvider> _stocks = [];
}
