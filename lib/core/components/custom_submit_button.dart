import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  final VoidCallback action;
  const CustomSubmitButton({
    super.key, required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: ScreenSize.width * 0.4,
        height: 45,
        decoration: BoxDecoration(
          color: MyColors.primaryColor.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('Submit')),
      ),
    );
  }
}
