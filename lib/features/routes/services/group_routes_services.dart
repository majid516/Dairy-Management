import 'dart:developer';

import 'package:diary_management/features/routes/model/route_group_model.dart';
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

}
