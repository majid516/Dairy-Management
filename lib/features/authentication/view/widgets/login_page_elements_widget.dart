import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/authentication/view/widgets/login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageElementsWidget extends StatelessWidget {
  const LoginPageElementsWidget({
    super.key,
    required this.nameController,
    required this.passController,
  });

  final TextEditingController nameController;
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Dairy Go",
              style: GoogleFonts.cabin(
                fontSize: 36,
                textStyle: TextStyle(
                  color: MyColors.secondaryColor,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: boxDecoration(),
              child: TextField(
                controller: nameController,
                decoration: inputDecoration("User Name"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: boxDecoration(),
              child: TextField(
                controller: passController,
                obscureText: true,
                decoration: inputDecoration("Login Id"),
              ),
            ),
            SizedBox(height: 30),
            LoginButtonWidget(
              nameController: nameController,
              passController: passController,
            ),
          ],
        ),
      ),
    );
  }
   InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: MyColors.secondaryColor),
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 2)),
      ],
    );
  }
}
