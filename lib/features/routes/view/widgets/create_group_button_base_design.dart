import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:flutter/material.dart';

class CreateGroupButtonBaseDesign extends StatelessWidget {
  const CreateGroupButtonBaseDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * 0.7,
      height: 40,
      decoration: BoxDecoration(
        gradient: MyColors.appGradient,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text(
          'Create Group',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: MyColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
