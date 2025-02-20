// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// class DriverModel {
//   final String id;
//   final String name;
//   final String password;
//   final String image;
//   final List<int> routes;
//   Driver({
//     required this.id,
//     required this.name,
//     required this.password,
//     required this.image,
//     required this.routes,
//   });

//   Driver copyWith({
//     String? id,
//     String? name,
//     String? password,
//     String? image,
//     List<int>? routes,
//   }) {
//     return Driver(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       password: password ?? this.password,
//       image: image ?? this.image,
//       routes: routes ?? this.routes,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'password': password,
//       'image': image,
//       'routes': routes,
//     };
//   }

//   factory Driver.fromMap(Map<String, dynamic> map) {
//     return Driver(
//       id: map['id'] as String,
//       name: map['name'] as String,
//       password: map['password'] as String,
//       image: map['image'] as String,
//       routes: List<int>.from((map['routes'] as List<int>),)
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Driver.fromJson(String source) => Driver.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Driver(id: $id, name: $name, password: $password, image: $image, routes: $routes)';
//   }

//   @override
//   bool operator ==(covariant Driver other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.id == id &&
//       other.name == name &&
//       other.password == password &&
//       other.image == image &&
//       listEquals(other.routes, routes);
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//       name.hashCode ^
//       password.hashCode ^
//       image.hashCode ^
//       routes.hashCode;
//   }
// }
