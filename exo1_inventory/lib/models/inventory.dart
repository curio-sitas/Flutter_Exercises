import 'Item.dart';

class Inventory {
  String name = "";
  late List<Item> items;

  Inventory(this.name) {}

  void addItem(Item item) {
    this.items.add(item);
  }

  void removeItem(int index) {
    if (this.items.length < 1) {
      return;
    }
    this.items.removeAt(index);
  }

  Item getItem(int index) {
    return this.items[index];
  }

  List<Item> getItems() {
    return this.items;
  }
}
