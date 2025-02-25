import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/authentication/view/widgets/bottom_wave_clipper.dart';
import 'package:diary_management/features/authentication/view/widgets/login_page_elements_widget.dart';
import 'package:diary_management/features/authentication/view/widgets/top_wave_clipper.dart';
import 'package:flutter/material.dart';

class LoginStackWidget extends StatelessWidget {
  const LoginStackWidget({
    super.key,
    required this.nameController,
    required this.passController,
  });

  final TextEditingController nameController;
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        LoginPageElementsWidget(nameController: nameController, passController: passController),
      ],
    );
  }
}
