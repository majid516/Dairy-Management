// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
part 'route_group_model.g.dart';

@HiveType(typeId: 3)
class RouteGroupModel {
  @HiveField(0)
  Driver? asignedDriver;
  @HiveField(1)
  String groupName;
  @HiveField(2)
  List<String> routes;
  @HiveField(3)
  String id;
  RouteGroupModel({
    this.asignedDriver,
    required this.groupName,
    required this.routes,
    required this.id,
  });

  RouteGroupModel copyWith({
    Driver? asignedDriver,
    String? groupName,
    List<String>? routes,
    String? id,
  }) {
    return RouteGroupModel(
      asignedDriver: asignedDriver ?? this.asignedDriver,
      groupName: groupName ?? this.groupName,
      routes: routes ?? this.routes,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asignedDriver': asignedDriver?.toMap(),
      'groupName': groupName,
      'routes': routes,
      'id': id,
    };
  }

  factory RouteGroupModel.fromMap(Map<String, dynamic> map) {
    return RouteGroupModel(
      asignedDriver: map['asignedDriver'] != null ? Driver.fromMap(map['asignedDriver'] as Map<String,dynamic>) : null,
      groupName: map['groupName'] as String,
      routes: List<String>.from((map['routes'] as List<String>),),
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RouteGroupModel.fromJson(String source) => RouteGroupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RouteGroupModel(asignedDriver: $asignedDriver, groupName: $groupName, routes: $routes, id: $id)';
  }

  @override
  bool operator ==(covariant RouteGroupModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.asignedDriver == asignedDriver &&
      other.groupName == groupName &&
      listEquals(other.routes, routes) &&
      other.id == id;
  }

  @override
  int get hashCode {
    return asignedDriver.hashCode ^
      groupName.hashCode ^
      routes.hashCode ^
      id.hashCode;
  }
  }
