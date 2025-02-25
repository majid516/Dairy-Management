import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:diary_management/features/driver_tracking/services/common_services.dart';
import 'package:diary_management/features/driver_tracking/services/location_services.dart';
import 'package:diary_management/features/routes/services/group_routes_services.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/services/database/database_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:latlong2/latlong.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState.loading()) {
    on<FetchRoutesEvent>((event, emit) async {
      LatLng currentLocation = await getCurrentLocation();

      if (currentLocation.latitude == 0.0 && currentLocation.longitude == 0.0) {
        log("Failed to fetch current location.");
        return;
      }

      final List<Store> stores = await fetchStores(event.driverId);

      final Marker currentLocationMarker = Marker(
        point: currentLocation,
        child: Icon(Icons.location_pin, color: Colors.blue, size: 40),
      );

      final Set<Marker> storeMarkers =
          stores.map((store) {
            return Marker(
              point: LatLng(store.latitude, store.longitude),
              child: Icon(Icons.store, color: Colors.red, size: 35),
            );
          }).toSet();
      storeMarkers.add(currentLocationMarker);

      emit(NavigationState.loaded(currentLocation, [], storeMarkers, stores));
    });

    on<GetRouteEvent>((event, emit) async {
      final state = this.state;
      if (state is NavigationLoaded) {
        if (event.store.latitude == 0.0 || event.store.longitude == 0.0) {
          log("Invalid store coordinates, skipping: ${event.store.name}");
          return;
        }

        List<Polyline> polyline = await getPolyline(
          state.currentLocation,
          event.store,
        );

        if (polyline.isNotEmpty) {
          log("Polyline received, updating state...");
        } else {
          log("No polyline received");
        }

        emit(
          NavigationState.loaded(
            state.currentLocation,
            polyline,
            state.markers,
            state.stores,
          ),
        );
      }
    });

    on<UpdateVisitStatusEvent>((event, emit) async {
      try {
        await StoreDatabaseServices.updateStore(event.store.id, event.store);
        await RouteGroupServices.updateVisited(
          event.driverId,
          event.store.id,
          event.store,
        );
        add(FetchRoutesEvent(event.driverId));
      } catch (e) {
        log(e.toString());
      }
    });
  }
}
