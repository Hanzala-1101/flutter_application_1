class Item {
  final String name;
  final int id;
  final int blazer;
  final int average;

  Item(this.name, this.id, this.blazer, this.average);

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(map["name"], map["id"], map["blazer"], map["average"]);
  }

  tomap() => {
        "name": name,
        "id": id,
        "blazer": blazer,
        "average": average,
      };
}

class ItemModel {
  static List<Item> product = [
    Item("hanzala", 125, 5, 5),
  ];
}
