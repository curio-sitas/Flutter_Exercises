import 'package:flutter/material.dart';

class Stock {
  String _name = "";
  int _count = 0;
  Color _color = Colors.blueAccent;

  Stock(String name, int count, Color color) {
    _count = count;
    _name = name;
    _color = color;
  }

  String getName() => _name;
  int getCount() => _count;
  Color getColor() => _color;

  void addOne() => {_count++};
  void removeOne() => {_count--};
  void setCount(int count) => {_count = count};
}
