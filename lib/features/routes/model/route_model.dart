import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'route_model.g.dart';

@HiveType(typeId: 2)
class Routes {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(3)
  String? driverId;
  @HiveField(4)
  List<String>? storeIds;
  Routes({required this.id, required this.name, this.driverId, this.storeIds});

  Routes copyWith({
    String? id,
    String? name,
    String? driverId,
    List<String>? storeIds,
  }) {
    return Routes(
      id: id ?? this.id,
      name: name ?? this.name,
      driverId: driverId ?? this.driverId,
      storeIds: storeIds ?? this.storeIds,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'driverId': driverId,
      'storeIds': storeIds,
    };
  }

  factory Routes.fromMap(Map<String, dynamic> map) {
    return Routes(
      id: map['id'] as String,
      name: map['name'] as String,
      driverId: map['driverId'] != null ? map['driverId'] as String : null,
      storeIds:
          map['storeIds'] != null
              ? List<String>.from((map['storeIds'] as List<String>))
              : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Routes.fromJson(String source) =>
      Routes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Routes(id: $id, name: $name, driverId: $driverId, storeIds: $storeIds)';
  }

  @override
  bool operator ==(covariant Routes other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.driverId == driverId &&
        listEquals(other.storeIds, storeIds);
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ driverId.hashCode ^ storeIds.hashCode;
  }
}
