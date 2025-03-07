import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/authentication/services/auth_services.dart';
import 'package:diary_management/features/dashboard/widgets/dash_board_icons_row_widget.dart';
import 'package:diary_management/features/dashboard/widgets/dashboard_card_row.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DriversBloc>().add(DriversEvent.fetchAllDrivers());
    context.read<RouteGroupBloc>().add(RouteGroupEvent.fetchAllGroups());
    context.read<StoresBloc>().add(StoresEvent.fetchAllStores());
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: CustomAppBar(
        backButtonNeeded: false,
        title: 'DashBoard',
        action: () => Navigator.pop(context),
        widget: IconButton(onPressed: (){AuthServices().logout(context);}, icon: Icon(Icons.logout_outlined, color: MyColors.whiteColor,)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardCardRow(),
            Space.hSpace20,
            DashBoardIconsRowWidget(),
          ],
        ),
      ),
    );
  }
}
