
import 'package:diary_management/features/authentication/services/auth_services.dart';

class AuthInitializer {
  static Future<void> initializeAuth() async {
    await AuthServices.init();
  }
}
