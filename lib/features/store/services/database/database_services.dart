import 'dart:developer';

import 'package:diary_management/features/store/model/store_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StoreDatabaseServices {
  static late Box<Store> _storeBox;

  static Future<void> init() async {
    try {
      _storeBox = await Hive.openBox<Store>('store');
    } catch (e) {
      throw Exception(e);
    }
  }

  static List<Store> getStore() {
    try {
      return _storeBox.values.toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> addStore(Store store) async {
    try {
      await _storeBox.put(store.id, store);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> updateStore(String id, Store store) async {
   
    try {
      await _storeBox.put(id, store);
      log(store.id);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> removeStore(String id) async {
    try {
      await _storeBox.delete(id);
    } catch (e) {
      throw Exception(e);
    }
  }
}
