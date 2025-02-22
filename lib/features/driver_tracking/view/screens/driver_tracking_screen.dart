
// import 'dart:convert';
// import 'dart:developer';
// import 'package:diary_management/core/colors.dart';
// import 'package:diary_management/core/components/custom_app_bar.dart';
// import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
// import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:http/http.dart' as http;
// import 'package:latlong2/latlong.dart';

// class DriverNavigationScreen extends StatefulWidget {
//   final Driver driver;
//   const DriverNavigationScreen({super.key, required this.driver});

//   @override
//   _DriverNavigationScreenState createState() => _DriverNavigationScreenState();
// }

// class _DriverNavigationScreenState extends State<DriverNavigationScreen> {
//   LatLng currentLocation = LatLng(11.2111, 75.9404);
//   Set<Marker> markers = {};
//   List<Polyline> polylines = [];
//   List<LatLng> polylineCoordinates = [];
//   List<Store> stores = [];
//   @override
//   void initState() {
//     super.initState();
//     context.read<RouteGroupBloc>().add(
//       RouteGroupEvent.fetchAssignedRoutes(widget.driver.id),
//     );
//   }

//   void _updateStores(List<Store> newStores) {
//     if (!listEquals(stores, newStores)) {
//       setState(() {
//         stores = newStores;
//         _loadStores();
//       });
//     }
//   }

//   Future<void> _getPolyline(LatLng destination) async {
//     final url = Uri.parse(
//       "https://router.project-osrm.org/route/v1/driving/${currentLocation.longitude},${currentLocation.latitude};${destination.longitude},${destination.latitude}?geometries=geojson",
//     );

//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final decoded = json.decode(response.body);
//       final coordinates = decoded['routes'][0]['geometry']['coordinates'];

//       setState(() {
//         polylineCoordinates =
//             coordinates.map<LatLng>((c) => LatLng(c[1], c[0])).toList();
//         polylines = [
//           Polyline(
//             points: polylineCoordinates,
//             color: Colors.blue,
//             strokeWidth: 4.0,
//           ),
//         ];
//       });
//     } else {
//       debugPrint("Error fetching route");
//     }
//   }

//   void completeVisit(Store store) {
//     setState(() {
//       store.isVisited = true;
//       store.visitTimestamp = DateTime.now();
//     });
//   }

//   void _loadStores() {
//     markers.clear();
//     markers.add(
//       Marker(
//         point: currentLocation,
//         width: 50,
//         height: 50,
//         child: const Icon(Icons.location_pin, color: Colors.red, size: 40),
//       ),
//     );
//     for (var store in stores) {
//       markers.add(
//         Marker(
//           point: LatLng(store.latitude, store.longitude),
//           width: 40,
//           height: 40,
//           child: const Icon(Icons.store, color: Colors.blue),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         title: 'Driver Navigation',
//         action: () {
//           Navigator.pop(context);
//         },
//       ),
//       backgroundColor: MyColors.whiteColor,
//       body: Column(
//         children: [
//           SizedBox(
//             height: 300,
//             child: FlutterMap(
//               options: MapOptions(
//                 initialCenter: currentLocation,
//                 initialZoom: 12.0,
//               ),
//               children: [
//                 TileLayer(
//                   urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
//                 ),
//                 PolylineLayer(polylines: polylines),
//                 MarkerLayer(markers: markers.toList()),
//               ],
//             ),
//           ),
//           Expanded(
//             child: BlocBuilder<RouteGroupBloc, RouteGroupState>(
//               builder: (context, state) {
//                 return state.maybeWhen(
//                   orElse:
//                       () => const Center(child: CircularProgressIndicator()),
//                   assingedRouteLoaded: (groups) {
//                     if (groups.isEmpty) {
//                       return const Center(child: Text("No routes available"));
//                     }

//                     // Collect stores from all groups
//                     final List<Store> newStores = [];

//                     for (var group in groups) {
//                       for (var location in group.latLng) {
//                         final latLngParts = location.split('-');
//                         newStores.add(
//                           Store(
//                             group.groupName,
//                             double.tryParse(latLngParts[0]) ?? 0,
//                             double.tryParse(latLngParts[1]) ?? 0,
//                           ),
//                         );
//                       }
//                     }

//                     WidgetsBinding.instance.addPostFrameCallback((_) {
//                       _updateStores(newStores);
//                     });

//                     return ListView.builder(
//                       itemCount: groups.length,
//                       itemBuilder: (context, groupIndex) {
//                         final group = groups[groupIndex];

//                         return Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               // Group Name as a Separate Tile
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text(
//                                   group.groupName,
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),

//                               // List of Routes under the Group
//                               ...group.routes.map((route) {
//                                 final routeIndex = group.routes.indexOf(route);
//                                 final store =
//                                     newStores[routeIndex]; // Assign store from new list

//                                 return Padding(
//                                   padding: const EdgeInsets.all(5.0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(
//                                         color: MyColors.secondaryColor
//                                             .withOpacity(0.3),
//                                         width: 1.5,
//                                       ),
//                                       gradient: LinearGradient(
//                                         colors: [
//                                           MyColors.secondaryColor.withOpacity(
//                                             0.01,
//                                           ),
//                                           MyColors.primaryColor.withOpacity(
//                                             0.1,
//                                           ),
//                                         ],
//                                         begin: Alignment.topLeft,
//                                         end: Alignment.bottomRight,
//                                       ),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.black.withOpacity(0.1),
//                                           blurRadius: 10,
//                                           offset: const Offset(0, 4),
//                                         ),
//                                       ],
//                                     ),
//                                     child: ListTile(
//                                       title: Text(
//                                         route['name']!,
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       subtitle: Text(
//                                         "Location: ${store.visitTimestamp}",
//                                       ),
//                                       onTap:
//                                           () => _getPolyline(
//                                             LatLng(
//                                               store.latitude,
//                                               store.longitude,
//                                             ),
//                                           ),
//                                       trailing: IconButton(
//                                         icon: Icon(
//                                           Icons.check_circle,
//                                           color:
//                                               store.isVisited
//                                                   ? Colors.green
//                                                   : Colors.grey,
//                                         ),
//                                         onPressed: () => completeVisit(store),
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'dart:convert';
import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/driver_tracking/view_model/bloc/navigation_bloc.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


class DriverNavigationScreen extends StatelessWidget {
  final Driver driver;
  const DriverNavigationScreen({super.key, required this.driver});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc()..add(NavigationEvent.fetchRoutes(driver.id)),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Driver Navigation',
          action: () => Navigator.pop(context),
        ),
        backgroundColor: MyColors.whiteColor,
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (currentLocation, polylines, markers, stores) => Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: FlutterMap(
  options: MapOptions(
    initialCenter: currentLocation,
    initialZoom: 12.0,
  ),
  children: [
    TileLayer(
      urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
    ),
    if (polylines.isNotEmpty) PolylineLayer(polylines: polylines),
    if (markers.isNotEmpty)
      MarkerLayer(
        markers:markers.toList(),
      ),
  ],
)

                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: stores.length,
                      itemBuilder: (context, index) {
                        final store = stores[index];
                        return ListTile(
                          title: Text(store.name),
                          subtitle: Text("Location: ${store.address}"),
                          onTap: () => context.read<NavigationBloc>().add(NavigationEvent.getRoute(store)),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.check_circle,
                              color: store.isVisited ? Colors.green : Colors.grey,
                            ),
                            onPressed: () => context.read<NavigationBloc>().add(NavigationEvent.updateVisitStatus(store)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              error: () => const Center(child: Text("No routes available")),
            );
          },
        ),
      ),
    );
  }
}
