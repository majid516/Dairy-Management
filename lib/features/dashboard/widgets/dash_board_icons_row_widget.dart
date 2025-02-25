import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/dashboard/widgets/dashboard_icon_card.dart';
import 'package:diary_management/features/drivers/view/screens/drivers_screen.dart';
import 'package:diary_management/features/routes/view/screens/routes_screen.dart';
import 'package:diary_management/features/store/view/screens/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DashBoardIconsRowWidget extends StatelessWidget {
  const DashBoardIconsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DashboardIconCard(context, "Drivers", LucideIcons.user, Colors.red, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => DriversScreen()),
          );
        }),
        DashboardIconCard(
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
        DashboardIconCard(
          context,
          "Routes",
          LucideIcons.map,
          Colors.orange,
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (ctx) => RouteManagementScreen()),
            );
          },
        ),
      ],
    );
  }
}
