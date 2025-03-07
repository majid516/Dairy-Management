import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/onboarding/widgets/bottom_positional_stack.dart';
import 'package:diary_management/features/onboarding/widgets/onboarding_elements.dart';
import 'package:diary_management/features/onboarding/widgets/top_positional_stack.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: MyColors.whiteColor),
        child: Stack(
          children: [
            TopPositionalStack(),
            BottomPositionalStack(),
            OnboardingElements(),
          ],
        ),
      ),
    );
  }
}
