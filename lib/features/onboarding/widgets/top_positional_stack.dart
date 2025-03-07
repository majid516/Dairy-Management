import 'package:diary_management/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TopPositionalStack extends StatelessWidget {
  const TopPositionalStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      left: -100,
      child: Stack(
        children: [
          ClipOval(
            child: Container(
              width: 300,
              height: 300,
              color: MyColors.primaryColor.withValues(alpha: 0.7),
            ),
          ),
          ClipOval(
            child: Container(
              width: 250,
              height: 250,
              color: MyColors.secondaryColor.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
