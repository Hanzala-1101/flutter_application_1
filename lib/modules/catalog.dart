// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Item {
  final String name;
  final int id;
  final int blazer;
  final int average;

  Item(
    this.name,
    this.id,
    this.blazer,
    this.average,
  );

  Item copyWith({
    String? name,
    int? id,
    int? blazer,
    int? average,
  }) {
    return Item(
      name ?? this.name,
      id ?? this.id,
      blazer ?? this.blazer,
      average ?? this.average,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'blazer': blazer,
      'average': average,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['name'] as String,
      map['id'] as int,
      map['blazer'] as int,
      map['average'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(name: $name, id: $id, blazer: $blazer, average: $average)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.name == name &&
        other.id == id &&
        other.blazer == blazer &&
        other.average == average;
  }

  @override
  int get hashCode {
    return name.hashCode ^ id.hashCode ^ blazer.hashCode ^ average.hashCode;
  }
}

class ItemModel {
  static List<Item> product = [];
}
