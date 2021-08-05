class Item {
  String name = "";
  int count = 0;

  Item(this.name, this.count) {}

  int getCount() {
    return this.count;
  }

  String getName() {
    return this.name;
  }

  void changeCount(int count) {
    this.count = count;
    if (this.count < 0) {
      this.count = 0;
    }
  }

  void addOne() {
    this.count++;
  }

  void removeOne() {
    this.count--;
    if (this.count < 0) {
      this.count = 0;
    }
  }

  void addTen() {
    this.count += 10;
  }

  void removeTen() {
    this.count -= 10;
    if (this.count < 0) {
      this.count = 0;
    }
  }
}
