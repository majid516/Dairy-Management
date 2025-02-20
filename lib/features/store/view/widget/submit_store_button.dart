import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_submit_button.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:flutter/material.dart';

class SubmitStoreButton extends StatelessWidget {
  final VoidCallback action;
  const SubmitStoreButton({
    super.key, required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      child: Container(
        width: ScreenSize.width*0.9,
        height: 60,
        decoration: BoxDecoration(
          color: MyColors.blackColor.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.red),
              ),
            ),
            CustomSubmitButton(action: action),
          ],
        ),
      ),
    );
  }
}
