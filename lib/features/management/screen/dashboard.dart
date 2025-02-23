import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/drivers/view/screens/drivers_screen.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/view/screens/routes_screen.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/store/view/screens/store_screen.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row for Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                 BlocBuilder<DriversBloc, DriversState>(
                  builder: (context, state) {
                  return  state.maybeWhen(
                      orElse: () {
                        return  _buildDashboardCard(
                  "Total Drivers",
                  "--",
                  Icons.directions_car,
                );
                
                      },
                      loadedState: (drivers) {
                       return  _buildDashboardCard(
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
                  return  state.maybeWhen(
                      orElse: () {
                        return  _buildDashboardCard(
                  "Total Stores", "--", Icons.store
                );
                
                      },
                      loadedState: (store) {
                       return  _buildDashboardCard(
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
                  return  state.maybeWhen(
                      orElse: () {
                        return  _buildDashboardCard(
                  "Total Routes",
                  "--",
                  Icons.route,
                );
                
                      },
                      loaded: (routes) {
                       return  _buildDashboardCard(
                  "Total Routes",
                  routes.length.toString(),
                  Icons.route,
                );
                      },
                    );
                  },
                ),
               
              ],
            ),
            SizedBox(height: 20),
            // Navigation Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               
                 _buildNavIcon(
                          context,
                          "Drivers",
                          LucideIcons.user,
                          Colors.red,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DriversScreen(),
                              ),
                            );
                          },
                        ),
                _buildNavIcon(
                  context,
                  "Stores",
                  LucideIcons.building,
                  MyColors.secondaryColor,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => StoreScreen()),
                    );
                  },
                ),
                _buildNavIcon(
                  context,
                  "Routes",
                  LucideIcons.map,
                  Colors.orange,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => RouteManagementScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            // Summary Section
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("- 120 active drivers across different routes."),
                    Text("- 50 stores connected to the platform."),
                    Text("- 30 different delivery routes in operation."),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard(String title, String count, IconData icon) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: MyColors.secondaryColor),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              count,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(
    BuildContext context,
    String label,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, size: 30, color: color),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
