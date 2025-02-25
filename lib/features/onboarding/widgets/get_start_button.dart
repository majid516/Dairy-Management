import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/authentication/view/screens/login_screen.dart';
import 'package:flutter/material.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (ctx) => LoginScreen()),
        );
      },
      child: Container(
        width: ScreenSize.width * 0.7,
        height: 40,
        decoration: BoxDecoration(
          gradient: MyColors.appGradient,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Get Started',
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
