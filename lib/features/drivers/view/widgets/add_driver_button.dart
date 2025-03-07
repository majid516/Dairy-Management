import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:diary_management/features/drivers/view/widgets/show_driver_dialog.dart';
import 'package:flutter/material.dart';

class AddDriverButton extends StatelessWidget {
  const AddDriverButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      child: InkWell(
        onTap: () => showDriverDialog(context, null),
        child: Container(
          width: ScreenSize.width * 0.7,
          height: 40,
          decoration: BoxDecoration(
            gradient: MyColors.appGradient,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              'Add Driver',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: MyColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
