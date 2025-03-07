import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/onboarding/widgets/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingElements extends StatelessWidget {
  const OnboardingElements({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: ScreenSize.height * 0.3),
          Text(
            'Dairy Go',
            style: GoogleFonts.cabin(
              fontSize: 36,
              textStyle: TextStyle(
                color: MyColors.secondaryColor,
                letterSpacing: 2,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Quality you can trust!',
            style: TextStyle(fontSize: 20, color: MyColors.secondaryColor),
          ),
          SizedBox(
            height: 240,
            width: 240,
            child: Image.asset('asset/dairy_landing.png'),
          ),
          Spacer(),
          GetStartButton(),
          Space.hSpace100,
        ],
      ),
    );
  }
}
