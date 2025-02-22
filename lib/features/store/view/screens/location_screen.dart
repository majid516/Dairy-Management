import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final LatLng initialLocation = LatLng(11.2111, 75.9404);
  LatLng? selectedLocation;

  void onMapTapped(TapPosition tapPosition, LatLng latLng) {
    setState(() {
      selectedLocation = latLng;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select Location',
        widget: IconButton(
          onPressed: () {
            if (selectedLocation != null) {
              Navigator.pop(context, selectedLocation);
            } else {
              showCustomSnackBar(context, 'please select location', true);
            }
          },
          icon: Icon(
            Icons.check_circle_outline_outlined,
            size: 28,
            color: MyColors.whiteColor,
          ),
        ),
        action: () {
          Navigator.pop(context);
        },
      ),
      body: FlutterMap(
      options: MapOptions(
        initialCenter: initialLocation,
        initialZoom: 12.0,
        onTap: onMapTapped
      ),
      children: [
        TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
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
    )
    );
  }
}
