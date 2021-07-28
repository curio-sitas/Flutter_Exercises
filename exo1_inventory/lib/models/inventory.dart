import 'package:flutter/material.dart';
import 'stock.dart';

class Inventory {
  String _name = "";
  Color _color = Colors.red;
  List<Stock> _stocks = [];
  Inventory(String name, Color color) {
    _name = name;
    _color = color;
  }

  String getName() => _name;
  Color getColor() => _color;

  void removeStockById(int id) => _stocks.removeAt(id);
  void addStock(Stock s) => _stocks.add(s);
}
