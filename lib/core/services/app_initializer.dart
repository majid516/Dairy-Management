import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:diary_management/features/store/services/database/database_services.dart';

import 'hive_initializer.dart';
import 'auth_initializer.dart';
import 'package:geolocator/geolocator.dart';

class AppInitializer {
  static Future<void> initializeApp() async {
    await HiveInitializer.initializeHive();
    await AuthInitializer.initializeAuth();
    await DriverDatabaseServices.init();
    await StoreDatabaseServices.init();
    Geolocator.checkPermission();
  }
}
