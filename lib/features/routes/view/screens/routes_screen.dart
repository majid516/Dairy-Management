import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/routes/view/screens/routes_group_screen.dart';
import 'package:diary_management/features/routes/view/widgets/route_screen_elements.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: RouteScreenElements(groupNameController: groupNameController),
    );
  }
}

