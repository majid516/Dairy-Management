import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWithPolylinWidget extends StatelessWidget {
  final LatLng currentLocation;
  final List<Polyline<Object>> polylines;
  final Set<Marker> markers;
  const MapWithPolylinWidget({
    super.key, required this.currentLocation, required this.polylines, required this.markers,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: currentLocation,
          initialZoom: 12.0,
        ),
        children: [
          TileLayer(
            urlTemplate:
                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
          if (polylines.isNotEmpty)
            PolylineLayer(polylines: polylines),
          if (markers.isNotEmpty)
            MarkerLayer(markers: markers.toList()),
        ],
      ),
    );
  }
}
