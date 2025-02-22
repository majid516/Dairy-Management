import 'dart:developer';

import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/driver_tracking/view/screens/driver_tracking_screen.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:diary_management/features/management/screen/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Stack(
        children: [
          ClipPath(
            clipper: TopWaveClipper(),
            child: Container(
              height: 280,
              decoration: BoxDecoration(gradient: MyColors.appGradient),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.secondaryColor.withValues(alpha: 0.3),
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: -30,
            child: Icon(
              Icons.eco,
              size: 100,
              color: MyColors.whiteColor.withValues(alpha: 0.5),
            ),
          ),
          Positioned(
            top: 140,
            right: 32,
            child: Icon(
              Icons.local_florist,
              size: 80,
              color: MyColors.whiteColor.withValues(alpha: 0.4),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 50,
            child: Icon(
              Icons.agriculture,
              size: 90,
              color: MyColors.secondaryColor.withValues(alpha: 0.3),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Dairy Go",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: _boxDecoration(),
                    child: TextField(
                      controller: nameController,
                      decoration: _inputDecoration("User Name"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: _boxDecoration(),
                    child: TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: _inputDecoration("Login Id"),
                    ),
                  ),
                  SizedBox(height: 30),
                  LoginButtonWidget(
                    nameController: nameController,
                    passController: passController,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: MyColors.secondaryColor),
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 2)),
      ],
    );
  }
}

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

  if (dName == 'admin' && dPass == 'admin123') {
    showCustomSnackBar(context, 'Admin login successfully', false);
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => DashboardScreen()));
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
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => DriverNavigationScreen(driver: driver!,)));
  } else {
    showCustomSnackBar(context, 'User Name and Password doesn\'t match', true);
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

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height - 50,
    );
    path.quadraticBezierTo(
      size.width * 3 / 4,
      size.height - 100,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
      size.width / 4,
      size.height - 80,
      size.width / 2,
      size.height - 50,
    );
    path.quadraticBezierTo(
      size.width * 3 / 4,
      size.height - 20,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
