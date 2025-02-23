import 'dart:developer';
import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/components/custom_text_from_field.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/core/services/generate_id.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view/screens/routes_group_screen.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:lucide_icons/lucide_icons.dart';

class RouteManagementScreen extends StatelessWidget {
  const RouteManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RoutesBloc>().add(RoutesEvent.loadRoutes());
    context.read<StoresBloc>().add(StoresEvent.fetchAllStores());
    final TextEditingController groupNameController = TextEditingController();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Routes Management',
        action: () => Navigator.pop(context),
        widget: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (ctx) => RoutesGroupsScreen()),
            );
          },
          icon: Icon(LucideIcons.map, color: MyColors.whiteColor),
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create Group:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Space.hSpace10,
            CustomTextFromField(
              controller: groupNameController,
              label: 'Group Name',
            ),
            Space.hSpace10,
            const Text(
              'Available Locations:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Space.hSpace10,
            BlocBuilder<StoresBloc, StoresState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Center(child: Text('Loading...')),
                  loadedState: (stores) {
                    return Expanded(
                      child: BlocBuilder<RouteSelectionCubit, List<Store>>(
                        builder: (context, selectedRoutes) {
                          return ListView.separated(
                            separatorBuilder:
                                (context, index) => Divider(
                                  height: 0,
                                  color: MyColors.primaryColor,
                                ),
                            itemCount: stores.length,
                            itemBuilder: (context, index) {
                              final store = stores[index];
                              final isSelected = selectedRoutes.any(
                                (route) => route.address == store.address,
                              );
                              return CheckboxListTile(
                                title: Text(
                                  store.name,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                subtitle: Text(store.address),
                                checkboxShape: CircleBorder(),
                                activeColor: MyColors.secondaryColor,
                                value: isSelected,
                                onChanged: (bool? value) {
                                  context
                                      .read<RouteSelectionCubit>()
                                      .toggleRoute(store);
                                },
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    final List<Store> selectedRoutes =
                        context.read<RouteSelectionCubit>().state;
                    if (selectedRoutes.isNotEmpty &&
                        groupNameController.text.trim().isNotEmpty) {
                      final name = groupNameController.text.trim();

                      final group = RouteGroupModel(
                        id: generateRandomNumber().toString(),
                        asignedDriver: null,
                        groupName: name,
                        stores:
                            selectedRoutes
                                .map(
                                  (route) => Store(
                                    id: route.id,
                                    name: route.name,
                                    address: route.address,
                                    contactNumber: route.contactNumber,
                                    latitude: route.latitude,
                                    longitude: route.longitude,
                                    isVisited: route.isVisited,
                                    visitTimestamp: route.visitTimestamp,
                                  ),
                                )
                                .toList(),
                      );

                      showCustomSnackBar(
                        context,
                        '${groupNameController.text.trim()} group created',
                        false,
                      );
                      context.read<RouteGroupBloc>().add(
                        RouteGroupEvent.addNewGroup(group),
                      );
                      context.read<RouteSelectionCubit>().clearSelection();
                      groupNameController.clear();
                    } else if (selectedRoutes.isEmpty) {
                      showCustomSnackBar(context, 'select shops', true);
                    } else if (groupNameController.text.trim().isEmpty) {
                      showCustomSnackBar(context, 'add group name', true);
                    }
                  },
                  child: Container(
                    width: ScreenSize.width * 0.7,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: MyColors.appGradient,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Group',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: MyColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> getLatLngFromAddress(String address) async {
  try {
    List<Location> locations = await locationFromAddress(address);
    if (locations.isNotEmpty) {
      Location location = locations.first;
      log("Latitude: ${location.latitude}, Longitude: ${location.longitude}");
    }
  } catch (e) {
    log("Error fetching coordinates: $e");
  }
}
