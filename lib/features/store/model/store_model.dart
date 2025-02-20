import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';

part 'store_model.g.dart';

@HiveType(typeId: 1)
class Store {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String address;
  @HiveField(3)
  final String contactNumber;
  @HiveField(4)
  final double latitude;
  @HiveField(5)
  final double longitude;
  @HiveField(6)
  bool isVisited;
  @HiveField(7)
  DateTime? visitTimestamp;

  Store({
    required this.id,
    required this.name,
    required this.address,
    required this.contactNumber,
    required this.latitude,
    required this.longitude,
    this.isVisited = false,
    this.visitTimestamp,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "address": address,
      "contactNumber": contactNumber,
      "latitude": latitude,
      "longitude": longitude,
      "isVisited": isVisited,
      "visitTimestamp": visitTimestamp?.toIso8601String(),
    };
  }

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      id: json["id"],
      name: json["name"],
      address: json["address"],
      contactNumber: json["contactNumber"],
      latitude: json["latitude"],
      longitude: json["longitude"],
      isVisited: json["isVisited"] ?? false,
      visitTimestamp:
          json["visitTimestamp"] != null
              ? DateTime.parse(json["visitTimestamp"])
              : null,
    );
  }

  static List<Store> fromJsonList(String jsonString) {
    Iterable list = json.decode(jsonString);
    return list.map((model) => Store.fromJson(model)).toList();
  }
}
