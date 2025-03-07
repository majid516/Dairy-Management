import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:diary_management/features/store/view/widget/add_store_screen.dart';
import 'package:flutter/material.dart';

class AddStoreCustomButton extends StatelessWidget {
  const AddStoreCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => AddStoreScreen()),
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
              'Add Store',
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
