import 'package:diary_management/features/authentication/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthServices {
  static final AuthServices _instance = AuthServices._internal();
  factory AuthServices() => _instance;
  AuthServices._internal();

  static late Box _authBox;

  static Future<void> init() async {
    if (!Hive.isBoxOpen('userAuth')) {
      _authBox = await Hive.openBox('userAuth');
    } else {
      _authBox = Hive.box('userAuth');
    }
  }

  /// Store username and password securely
  void login(String username, String password) {
    _authBox.put('username', username);
    _authBox.put('password', password);
  }

  /// Logout the user by deleting credentials
  void logout(BuildContext context) {
    _authBox.delete('username');
    _authBox.delete('password');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  /// Retrieve stored username
  String? getUsername() {
    return _authBox.get('username');
  }

  /// Retrieve stored password (not recommended for direct use)
  String? getPassword() {
    return _authBox.get('password');
  }
}
