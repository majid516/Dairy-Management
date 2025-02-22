// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';

part 'route_group_model.g.dart';

@HiveType(typeId: 3)
class RouteGroupModel {
  @HiveField(0)
  Driver? asignedDriver;
  @HiveField(1)
  String groupName;
  @HiveField(2)
  List<Store> stores;
  @HiveField(3)
  String id;
  RouteGroupModel({
    this.asignedDriver,
    required this.groupName,
    required this.stores,
    required this.id,
  });
  @HiveField(4)

  RouteGroupModel copyWith({
    Driver? asignedDriver,
    String? groupName,
    List<Store>? stores,
    String? id,
  }) {
    return RouteGroupModel(
      asignedDriver: asignedDriver ?? this.asignedDriver,
      groupName: groupName ?? this.groupName,
      stores: stores ?? this.stores,
      id: id ?? this.id,
    );
  }

  @override
  String toString() {
    return 'RouteGroupModel(asignedDriver: $asignedDriver, groupName: $groupName, stores: $stores, id: $id)';
  }

  @override
  bool operator ==(covariant RouteGroupModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.asignedDriver == asignedDriver &&
      other.groupName == groupName &&
      listEquals(other.stores, stores) &&
      other.id == id;
  }

  @override
  int get hashCode {
    return asignedDriver.hashCode ^
      groupName.hashCode ^
      stores.hashCode ^
      id.hashCode;
  }
}
