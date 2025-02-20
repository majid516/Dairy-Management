import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';


class DriverDatabaseServices {
  static late Box<Driver> _driverBox;

  static Future<void> init() async {
    _driverBox = await Hive.openBox<Driver>('drivers');
  }

  static List<Driver> getDrivers() {
    return _driverBox.values.toList();
  }

  static Future<void> addDriver(Driver driver) async {
    await _driverBox.put(driver.id, driver);
  }

  static Future<void> updateDriver(String id, Driver driver) async {
    await _driverBox.put(id, driver);
  }

  static Future<void> removeDriver(String id) async {
    await _driverBox.delete(id);
  }


}