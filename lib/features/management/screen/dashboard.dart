import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/drivers/view/screens/drivers_screen.dart';
import 'package:diary_management/features/routes/view/screens/routes_screen.dart';
import 'package:diary_management/features/store/view/screens/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.whiteColor,
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
                _buildDashboardCard("Total Drivers", "120", Icons.directions_car),
                _buildDashboardCard("Total Stores", "50", Icons.store),
                _buildDashboardCard("Total Routes", "30", Icons.route),
              ],
            ),
            SizedBox(height: 20),
            // Navigation Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavIcon(context, "Drivers", LucideIcons.user, Colors.red, () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> DriversScreen()));
                }),
                _buildNavIcon(context, "Stores", LucideIcons.building, MyColors.secondaryColor, () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> StoreScreen()));

                }),
                _buildNavIcon(context, "Routes", LucideIcons.map, Colors.orange, () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> RouteManagementScreen()));

                }),
               
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
                    Text("Summary", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: MyColors.secondaryColor),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            SizedBox(height: 5),
            Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(BuildContext context, String label, IconData icon, Color color, VoidCallback onTap) {
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
        Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
