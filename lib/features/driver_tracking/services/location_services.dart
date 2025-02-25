
import 'dart:convert';
import 'dart:developer';

import 'package:diary_management/features/store/model/store_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

// get current location of the user with access the permissions

Future<LatLng> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    debugPrint("Location services are disabled.");
    return LatLng(0.0, 0.0);
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      debugPrint("Location permission denied.");
      return LatLng(0.0, 0.0);
    }
  }

  if (permission == LocationPermission.deniedForever) {
    debugPrint("Location permission permanently denied. Ask user to enable it in settings.");
    return LatLng(0.0, 0.0);
  }

  try {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return LatLng(position.latitude, position.longitude);
  } catch (e) {
    debugPrint("Failed to get location: $e");
    return LatLng(0.0, 0.0);
  }
}


// getPolyline for showing in the driver tracking screen

Future<List<Polyline>> getPolyline(LatLng start, Store store) async {
  final url =
      "https://router.project-osrm.org/route/v1/driving/${start.longitude},${start.latitude};${store.longitude},${store.latitude}?geometries=geojson";

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final decoded = jsonDecode(response.body);
    if (decoded['routes'] == null || decoded['routes'].isEmpty) {
      log("No routes found for this destination.");
      return [];
    }

    final List<dynamic> coordinates =
        decoded['routes'][0]['geometry']['coordinates'];

    log("Coordinates received: $coordinates");

    List<LatLng> points =
        coordinates.map((coord) {
          return LatLng(coord[1], coord[0]); 
        }).toList();

    if (points.isEmpty) {
      log("Route has no valid points.");
      return [];
    }

    return [Polyline(points: points, color: Colors.blue, strokeWidth: 5.0)];
  } else {
    log("Failed to fetch route: ${response.body}");
    return [];
  }
}



