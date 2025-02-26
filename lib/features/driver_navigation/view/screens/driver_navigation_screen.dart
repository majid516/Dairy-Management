import 'dart:developer';

import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/authentication/services/services.dart';
import 'package:diary_management/features/driver_navigation/view/widgets/driver_stores_list.dart';
import 'package:diary_management/features/driver_navigation/view/widgets/map_with_polylin_widget.dart';
import 'package:diary_management/features/driver_navigation/view/widgets/store_visit_data_box.dart';
import 'package:diary_management/features/driver_navigation/view_model/bloc/navigation_bloc.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverNavigationScreen extends StatelessWidget {
  final Driver? driver;
  final String? dName;
  final String? dPass;
  const DriverNavigationScreen({
    super.key,
    this.driver,
    this.dName,
    this.dPass,
  });

  @override
  Widget build(BuildContext context) {
    final drivers = DriverDatabaseServices.getDrivers();

    Driver? driver2;

    try {
      driver2 = drivers.singleWhere(
        (driver) => driver.name == dName && driver.password == dPass,
      );
    } catch (e) {
      driver2 = null;
    }
    log(driver?.name ?? driver2?.name ?? 'no driver');
    return BlocProvider(
      create:
          (context) =>
              NavigationBloc()..add(
                NavigationEvent.fetchRoutes(driver?.id ?? driver2?.id ?? ''),
              ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Driver Navigation',
          action: () {},
          widget: IconButton(
            onPressed: () {
              AuthServices().logout(context);
            },
            icon: Icon(Icons.logout, color: MyColors.whiteColor),
          ),
          backButtonNeeded: false,
        ),
        backgroundColor: MyColors.whiteColor,
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (currentLocation, polylines, markers, stores) {
                int completedCount =
                    stores
                        .where((element) {
                          return element.isVisited == true;
                        })
                        .toList()
                        .length;
                return Column(
                  children: [
                    StoreVisitDataBox(
                      totalStores: stores.length,
                      visitedStores: completedCount,
                    ),
                    MapWithPolylinWidget(
                      currentLocation: currentLocation,
                      polylines: polylines,
                      markers: markers,
                    ),
                    DriverStoresList(
                      driver: driver ?? driver2!,
                      stores: stores,
                    ),
                  ],
                );
              },
              error: () => const Center(child: Text("No routes available")),
            );
          },
        ),
      ),
    );
  }
}
