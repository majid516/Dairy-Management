import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'driver_hive_model.g.dart';

@HiveType(typeId: 0)
class Driver {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String password;

  @HiveField(3)
  final String image;

  @HiveField(4)
  final List<int> routes;

  @HiveField(5)
  final String contactNumber;
  Driver({
    required this.id,
    required this.name,
    required this.password,
    required this.image,
    required this.routes,
    required this.contactNumber,
  });

  Driver copyWith({
    String? id,
    String? name,
    String? password,
    String? image,
    List<int>? routes,
    String? contactNumber,
  }) {
    return Driver(
      id: id ?? this.id,
      name: name ?? this.name,
      password: password ?? this.password,
      image: image ?? this.image,
      routes: routes ?? this.routes,
      contactNumber: contactNumber ?? this.contactNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'image': image,
      'routes': routes,
      'contactNumber': contactNumber,
    };
  }

  factory Driver.fromMap(Map<String, dynamic> map) {
    return Driver(
      id: map['id'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      image: map['image'] as String,
      routes: List<int>.from((map['routes'] as List<int>)),
      contactNumber: map['contactNumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Driver.fromJson(String source) =>
      Driver.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Driver(id: $id, name: $name, password: $password, image: $image, routes: $routes, contactNumber: $contactNumber)';
  }

  @override
  bool operator ==(covariant Driver other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.password == password &&
        other.image == image &&
        listEquals(other.routes, routes) &&
        other.contactNumber == contactNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        password.hashCode ^
        image.hashCode ^
        routes.hashCode ^
        contactNumber.hashCode;
  }
}
