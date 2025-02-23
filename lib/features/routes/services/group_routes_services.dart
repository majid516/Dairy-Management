import 'dart:developer';

import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:hive_flutter/hive_flutter.dart';


class RouteGroupServices {
  static late Box<RouteGroupModel> routesGroupBox;
  static Future<void> groupRoutes(RouteGroupModel group) async {
    try {
      routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
      await routesGroupBox.put(group.id, group);
    } catch (e) {
      throw Exception(e);
    }
  }
  static Future<void> updateGroup(RouteGroupModel group) async {
    try {
      routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
  await routesGroupBox.put(group.id, group);


    } catch (e) {
      throw Exception(e);
    }
  }
static Future<List<RouteGroupModel>> fetchAllGroups() async {
  try {
    if (!Hive.isBoxOpen('routesGroup')) {
      routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
    }
    
    final data = routesGroupBox.values.toList();
    return data;
  } catch (e, s) {
    log("Error fetching groups: $e\nStack Trace: $s");
    return []; 
  }
}
static Future<List<RouteGroupModel>> fetchAssignedRoutes(String id) async {
  try {
    final routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
    final data = routesGroupBox.values.where((e) => e.asignedDriver?.id == id).toList();

    return data;
  } catch (e, s) {
    log("Error fetching groups: $e\nStack Trace: $s");
    return [];
  }
}
static Future<void> updateVisited(String driverId, String id, Store store) async {
  try {
    final routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');

    final data = routesGroupBox.values.where((e) => e.asignedDriver?.id == driverId).toList();


    for (var route in data) {
      for (int i = 0; i < route.stores.length; i++) {
        if (route.stores[i].id == id) {
      log('Function called ${route.stores[i].id}');
          route.stores[i] = store;
        }
      }
      await routesGroupBox.put(route.id, route);
    }
  } catch (e, s) {
    log("Error updating visited store: $e\nStack Trace: $s");
  }
}



}
