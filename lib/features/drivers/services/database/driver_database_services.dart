import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DriverDatabaseServices {
  static late Box<Driver> _driverBox;

  static Future<void> init() async {
    try {
      _driverBox = await Hive.openBox<Driver>('drivers');
    } catch (e) {
      throw Exception(e);
    }
  }

  static List<Driver> getDrivers() {
    try {
      return _driverBox.values.toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> addDriver(Driver driver) async {
    try {
      await _driverBox.put(driver.id, driver);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> updateDriver(String id, Driver driver) async {
    try {
      await _driverBox.put(id, driver);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> removeDriver(String id) async {
    try {
      await _driverBox.delete(id);
    } catch (e) {
      throw Exception(e);
    }
  }
}
