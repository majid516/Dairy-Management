import 'dart:developer';
import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:diary_management/core/constants/strings.dart';
import 'package:diary_management/features/authentication/services/auth_services.dart';
import 'package:diary_management/features/dashboard/screen/dashboard.dart';
import 'package:diary_management/features/driver_navigation/view/screens/driver_navigation_screen.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.nameController,
    required this.passController,
  });

  final TextEditingController nameController;
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final dName = nameController.text.trim();
        final dPass = passController.text.trim();

        if (dName.isEmpty || dPass.isEmpty) {
          showCustomSnackBar(context, 'Fill required fields', true);
          return;
        }
     AuthServices().login(dName,dPass);
        if (dName == adminName && dPass == adminPassword) {
          showCustomSnackBar(context, 'Admin login successfully', false);
          Navigator.of(
            context,
          ).pushReplacement(MaterialPageRoute(builder: (ctx) => DashboardScreen()));
          return;
        }

        final drivers = DriverDatabaseServices.getDrivers();

        Driver? driver;

        try {
          driver = drivers.singleWhere(
            (driver) => driver.name == dName && driver.password == dPass,
          );
        } catch (e) {
          driver = null;
        }

        if (driver != null) {
          showCustomSnackBar(context, 'Login successfully', false);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => DriverNavigationScreen(driver: driver!),
            ),
          );
        } else {
          showCustomSnackBar(
            context,
            'User Name and Password doesn\'t match',
            true,
          );
        }

        log(driver?.name ?? 'No driver');
      },

      child: Container(
        width: ScreenSize.width * 0.9,
        height: 45,
        decoration: BoxDecoration(
          gradient: MyColors.appGradient,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: MyColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
