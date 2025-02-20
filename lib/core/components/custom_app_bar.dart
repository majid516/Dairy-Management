import 'dart:math';
import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback action;
  const CustomAppBar({super.key, required this.title, required this.action});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: ScreenSize.width,
          height: 120,
          decoration: BoxDecoration(gradient: MyColors.appGradient),
        ),
        Positioned(
          right: -10,
          child: Transform.rotate(
            angle: 15 * pi / 180,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              child: Container(
                width: ScreenSize.width * 0.4,
                height: 120,
                color: MyColors.secondaryColor.withValues(alpha: 0.4),
              ),
            ),
          ),
        ),
        Positioned(
          right: -100,
          child: Transform.rotate(
            angle: 15 * pi / 180,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              child: Container(
                width: ScreenSize.width * 0.4,
                height: 100,
                color: MyColors.secondaryColor.withValues(alpha: 0.6),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Row(
            children: [
              Space.wSpace20,
              InkWell(
                onTap: action,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.whiteColor,
                  size: 20,
                ),
              ),
              Space.wSpace20,
              Text(
                title,
                style: GoogleFonts.cabin(
                  fontSize: 26,
                  textStyle: TextStyle(
                    color: MyColors.whiteColor,
                    letterSpacing: .5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
