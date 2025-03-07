import 'package:diary_management/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomPositionalStack extends StatelessWidget {
  const BottomPositionalStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -100,
      right: -100,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipOval(
            child: Container(
              width: 300,
              height: 300,
              color: MyColors.secondaryColor.withValues(alpha: 0.3),
            ),
          ),
          ClipOval(
            child: Container(
              width: 200,
              height: 200,
              color: MyColors.secondaryColor.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
