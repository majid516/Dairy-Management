import 'package:diary_management/features/dashboard/widgets/dash_board_card.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCardRow extends StatelessWidget {
  const DashboardCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<DriversBloc, DriversState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return DashBoardCard(
                  "Total Drivers",
                  "--",
                  Icons.directions_car,
                );
              },
              loadedState: (drivers) {
                return DashBoardCard(
                  "Total Drivers",
                  drivers.length.toString(),
                  Icons.directions_car,
                );
              },
            );
          },
        ),
        BlocBuilder<StoresBloc, StoresState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return DashBoardCard("Total Stores", "--", Icons.store);
              },
              loadedState: (store) {
                return DashBoardCard(
                  "Total Stores",
                  store.length.toString(),
                  Icons.store,
                );
              },
            );
          },
        ),
        BlocBuilder<RouteGroupBloc, RouteGroupState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return DashBoardCard("Total Routes", "--", Icons.route);
              },
              loaded: (routes) {
                return DashBoardCard(
                  "Total Routes",
                  routes.length.toString(),
                  Icons.route,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
