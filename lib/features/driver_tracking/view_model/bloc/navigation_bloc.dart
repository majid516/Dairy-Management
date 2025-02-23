import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/services/group_routes_services.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/services/database/database_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState.loading()) {
    on<FetchRoutesEvent>((event, emit) async {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      LatLng currentLocation = LatLng(position.latitude, position.longitude);
//
      final List<Store> stores = await fetchStores(event.driverId);

      // Add marker for the current location
      final Marker currentLocationMarker = Marker(
        point: currentLocation,
        child: Icon(Icons.location_pin, color: Colors.blue, size: 40),
      );

      // Store markers for stores
      final Set<Marker> storeMarkers = stores.map((store) {
        return Marker(
          point: LatLng(store.latitude, store.longitude),
          child: Icon(Icons.store, color: Colors.red, size: 35),
        );
      }).toSet();

      // Add the current location marker to the marker list
      storeMarkers.add(currentLocationMarker);

      emit(NavigationState.loaded(currentLocation, [], storeMarkers, stores));
    });

    on<GetRouteEvent>((event, emit) async {
      final state = this.state;
      if (state is NavigationLoaded) {
        print("Fetching polyline for store: ${event.store.name} at (${event.store.latitude}, ${event.store.longitude})");

        // Ensure coordinates are valid before making API request
        if (event.store.latitude == 0.0 || event.store.longitude == 0.0) {
          print("Invalid store coordinates, skipping: ${event.store.name}");
          return;
        }

        List<Polyline> polyline = await getPolyline(state.currentLocation, event.store);

        if (polyline.isNotEmpty) {
          print("Polyline received, updating state...");
        } else {
          print("No polyline received");
        }

        emit(NavigationState.loaded(
          state.currentLocation,
          polyline,
          state.markers,
          state.stores,
        ));
      }
    });

    on<UpdateVisitStatusEvent>((event, emit) async{
     try {
     await StoreDatabaseServices.updateStore(event.store.id, event.store);
  await RouteGroupServices.updateVisited( event.driverId,event.store.id, event.store); 
  add(FetchRoutesEvent(event.driverId));
     } catch (e) {
       
     }
    
    });
  }
}

Future<List<Polyline>> getPolyline(LatLng start, Store store) async {
  final url =
      "https://router.project-osrm.org/route/v1/driving/${start.longitude},${start.latitude};${store.longitude},${store.latitude}?geometries=geojson";

  print("Fetching route from: $url"); // Debugging Line

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final decoded = jsonDecode(response.body);
    final List<dynamic> coordinates = decoded['routes'][0]['geometry']['coordinates'];

    print("Coordinates received: $coordinates"); // Debugging Line

    List<LatLng> points = coordinates.map((coord) {
      return LatLng(coord[1], coord[0]); // Reverse to (lat, lng)
    }).toList();

    return [
      Polyline(
        points: points,
        color: Colors.blue,
        strokeWidth: 5.0,
      ),
    ];
  } else {
    print("Failed to fetch route: ${response.body}");
  }

  return [];
}

// Function to parse latitude and longitude safely
double? parseCoordinate(dynamic value) {
  if (value == null || value.toString().trim().isEmpty) return null;
  return double.tryParse(value.toString());
}


 Future<List<Store>> fetchStores(String driverId) async {
  try {
    final routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
    final assignedGroups = routesGroupBox.values.where((e) => e.asignedDriver?.id == driverId).toList();

    List<Store> stores = [];

    for (var group in assignedGroups) {
  log("Group ID: ${group.id} has ${group.stores.first.latitude} stores");
  stores.addAll(group.stores);
}


    return stores;
  } catch (e, s) {
    log("Error fetching assigned routes: $e\nStack Trace: $s");
    return [];
  }
 }

Future<LatLng> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Check if location services are enabled
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    debugPrint("Location services are disabled.");
    return LatLng(0.0, 0.0);
  }

  // Check and request permission
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

  // Fetch location
  try {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return LatLng(position.latitude, position.longitude);
  } catch (e) {
    debugPrint("Failed to get location: $e");
    return LatLng(0.0, 0.0);
  }
}
