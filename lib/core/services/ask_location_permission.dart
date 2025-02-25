import 'dart:developer';
import 'package:geolocator/geolocator.dart';

// ask user permission to access the location

Future<Position?> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    log("Location services are disabled.");
    return null;
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      log("Location permissions are denied");
      return null;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    print("Location permissions are permanently denied. Open settings.");
    await Geolocator.openAppSettings();
    return null;
  }

  return await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );
}
