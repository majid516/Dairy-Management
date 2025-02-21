import 'package:diary_management/core/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class ShowLocationCardWidget extends StatelessWidget {
  final Function() action;
  const ShowLocationCardWidget({
    super.key,
    required this.selectedLocation,
    required this.initialLocation,
    required this.action,
  });

  final LatLng? selectedLocation;
  final LatLng initialLocation;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 300,
        width: ScreenSize.width * 0.9,
        child: InkWell(
          onTap: action,
          child: FlutterMap(
            options: MapOptions(
              initialCenter:
                  selectedLocation == null
                      ? initialLocation
                      : selectedLocation!,
              initialZoom: 12.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point:
                        selectedLocation == null
                            ? initialLocation
                            : selectedLocation!,
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
          ),
        ),
      ),
    );
  }
}
