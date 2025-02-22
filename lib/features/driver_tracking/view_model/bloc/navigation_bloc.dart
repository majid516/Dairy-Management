import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';
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

    on<UpdateVisitStatusEvent>((event, emit) {
      final state = this.state;
      if (state is NavigationLoaded) {
        final updatedStores = state.stores.map((store) {
          if (store.id == event.store.id) {
            return Store(
              id: store.id,
              name: store.name,
              address: store.address,
              contactNumber: store.contactNumber,
              latitude: store.latitude,
              longitude: store.longitude,
              isVisited: true,
              visitTimestamp: DateTime.now(),
            );
          }
          return store;
        }).toList();
        emit(NavigationState.loaded(state.currentLocation, state.polylines, state.markers, updatedStores));
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
  log(driverId);
  // try {
  //   final routesGroupBox = await Hive.openBox<RouteGroupModel>('routesGroup');
  //   final assignedGroups = routesGroupBox.values.where((e) => e.asignedDriver?.id == '38112480').toList();

  //   List<Store> stores = [];

  //   for (var group in assignedGroups) {
  //     for (var route in group.stores) {
  //       // Extract required details from the route map
  //       String name = route["name"] ?? "Unknown Store";
  //       String address = route["address"] ?? "Unknown Address";
  //       String contact = route["contact"] ?? "N/A";
  //       double latitude = double.tryParse(route["latitude"] ?? "") ?? 0.0;
  //       double longitude = double.tryParse(route["longitude"] ?? "") ?? 0.0;
  //    log(route['latitude']?? 'no value');
  //       stores.add(Store(
  //         id: group.id, // Using group ID, modify if each store has a unique ID
  //         name: name,
  //         address: address,
  //         contactNumber: contact,
  //         latitude: latitude,
  //         longitude: longitude,
  //         isVisited: false,
  //         visitTimestamp: null,
  //       ));
  //     }
  //   }

  //   return stores;
  // } catch (e, s) {
  //   log("Error fetching assigned routes: $e\nStack Trace: $s");
  //   return [];
  // }
  return [];
}


Future<LatLng> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return LatLng(0.0, 0.0); // Default if location services are off
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return LatLng(0.0, 0.0); // Default if permission is denied
    }
  }

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  return LatLng(position.latitude, position.longitude);
}
