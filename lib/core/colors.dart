import 'package:flutter/material.dart';

class MyColors {
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const primaryColor =  Color.fromARGB(255, 174, 213, 129);
  static const secondaryColor =  Color.fromARGB(255, 104, 159, 55);
  static Gradient appGradient = LinearGradient(
    colors: [secondaryColor, primaryColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
