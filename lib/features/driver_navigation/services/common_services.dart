import 'dart:developer';

import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<List<Store>> fetchStores(String driverId) async {
  log('fetching worked');

  try {
    final routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
    final assignedGroups =
        routesGroupBox.values
            .where((e) => e.asignedDriver?.id == driverId)
            .toList();

    List<Store> stores = [];

    for (var group in assignedGroups) {
      log("Group ID: ${group.id} has ${group.stores.first.latitude} stores");
      stores.addAll(group.stores);
    }

    return stores;
  } catch (e, s) {
    log("Error fetching assigned routes: $e\nStack Trace: $s");
    return [];
  }
}