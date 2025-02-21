import 'package:diary_management/features/routes/model/route_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RoutesServices {
  static late Box<Routes> _routesBox;

  static Future<void> init() async {
    try {
      _routesBox = await Hive.openBox<Routes>('routes');
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<List<Routes>> getRoutes() async {
    try {
      return _routesBox.values.toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Routes?> getRoute(String id) async {
    try {
      return _routesBox.get(id);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> addRoute(Routes route) async {
    try {
      await _routesBox.put(route.id, route);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> updateRoute(Routes route) async {
    try {
      await _routesBox.put(route.id, route);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> deleteRoute(String id) async {
    try {
      await _routesBox.delete(id);
    } catch (e) {
      throw Exception(e);
    }
  }
}
