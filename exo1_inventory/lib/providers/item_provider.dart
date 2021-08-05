import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  String name = "";
  int count = 0;
  ItemProvider(this.name, this.count);
}
