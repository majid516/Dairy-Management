import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/model/route_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveInitializer {
  static Future<void> initializeHive() async {
    await Hive.initFlutter();

    if (!Hive.isAdapterRegistered(DriverAdapter().typeId)) {
      Hive.registerAdapter(DriverAdapter());
    }
    if (!Hive.isAdapterRegistered(StoreAdapter().typeId)) {
      Hive.registerAdapter(StoreAdapter());
    }
    if (!Hive.isAdapterRegistered(RoutesAdapter().typeId)) {
      Hive.registerAdapter(RoutesAdapter());
    }
    if (!Hive.isAdapterRegistered(RouteGroupModelAdapter().typeId)) {
      Hive.registerAdapter(RouteGroupModelAdapter());
    }
  }
}