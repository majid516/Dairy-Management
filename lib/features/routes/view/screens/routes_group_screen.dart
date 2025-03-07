import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/view/widgets/group_list_widget.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutesGroupsScreen extends StatelessWidget {
  const RoutesGroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RouteGroupBloc>().add(RouteGroupEvent.fetchAllGroups());
    context.read<DriversBloc>().add(DriversEvent.fetchAllDrivers());

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Routes Groups',
        action: () => Navigator.pop(context),
      ),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: BlocBuilder<RouteGroupBloc, RouteGroupState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: Text('Loading...')),
              error: (message) => Center(child: Text(message)),
              loaded: (groups) {
                if (groups.isEmpty) {
                  return Center(
                    child: Text(
                      'No Groups Found',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: MyColors.blackColor.withValues(alpha: 0.4),
                      ),
                    ),
                  );
                }
                return GroupListWidget(groups: groups);
              },
            );
          },
        ),
      ),
    );
  }
}
