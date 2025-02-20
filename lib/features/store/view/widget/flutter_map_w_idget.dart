import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapWIdget extends StatelessWidget {
  final Function(TapPosition tapPosition, LatLng latLngLat) action;
  const FlutterMapWIdget({
    super.key,
    required this.initialLocation,
    required this.selectedLocation,
    required this.action,
  });

  final LatLng initialLocation;
  final LatLng? selectedLocation;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: initialLocation,
        initialZoom: 12.0,
        onTap: (lat, long) {
          action;
        },
      ),
      children: [
        TileLayer(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
        ),
        if (selectedLocation != null)
          MarkerLayer(
            markers: [
              Marker(
                point: selectedLocation!,
                width: 50,
                height: 50,
                child: const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
