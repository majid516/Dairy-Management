// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  final bool isVisited;
  @HiveField(7)
  DateTime? visitTimestamp;
  Store({
    required this.id,
    required this.name,
    required this.address,
    required this.contactNumber,
    required this.latitude,
    required this.longitude,
    required this.isVisited,
    this.visitTimestamp,
  });


  Store copyWith({
    String? id,
    String? name,
    String? address,
    String? contactNumber,
    double? latitude,
    double? longitude,
    bool? isVisited,
    DateTime? visitTimestamp,
  }) {
    return Store(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      contactNumber: contactNumber ?? this.contactNumber,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isVisited: isVisited ?? this.isVisited,
      visitTimestamp: visitTimestamp ?? this.visitTimestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'contactNumber': contactNumber,
      'latitude': latitude,
      'longitude': longitude,
      'isVisited': isVisited,
      'visitTimestamp': visitTimestamp?.millisecondsSinceEpoch,
    };
  }

  factory Store.fromMap(Map<String, dynamic> map) {
    return Store(
      id: map['id'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
      contactNumber: map['contactNumber'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      isVisited: map['isVisited'] as bool,
      visitTimestamp: map['visitTimestamp'] != null ? DateTime.fromMillisecondsSinceEpoch(map['visitTimestamp'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Store.fromJson(String source) => Store.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Store(id: $id, name: $name, address: $address, contactNumber: $contactNumber, latitude: $latitude, longitude: $longitude, isVisited: $isVisited, visitTimestamp: $visitTimestamp)';
  }

  @override
  bool operator ==(covariant Store other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.address == address &&
      other.contactNumber == contactNumber &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.isVisited == isVisited &&
      other.visitTimestamp == visitTimestamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      address.hashCode ^
      contactNumber.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      isVisited.hashCode ^
      visitTimestamp.hashCode;
  }
}
