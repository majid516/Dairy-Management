
import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  MyColors.whiteColor,
      body: Stack(
        children: [
          ClipPath(
            clipper: TopWaveClipper(),
            child: Container(
              height: 280,
              decoration: BoxDecoration(
              
                gradient: MyColors.appGradient
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.secondaryColor.withValues(alpha: 0.3),
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: -30,
            child: Icon(
              Icons.eco,
              size: 100,
              color: MyColors.whiteColor.withValues(alpha:0.5),
            ),
          ),
          Positioned(
            top: 140,
            right: 32,
            child: Icon(
              Icons.local_florist,
              size: 80,
              color: MyColors.whiteColor.withValues(alpha:0.4),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 50,
            child: Icon(
              Icons.agriculture,
              size: 90,
              color: MyColors.secondaryColor.withValues(alpha: 0.3),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Dairy Go",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: _boxDecoration(),
                    child: TextField(
                      controller: nameController,
                      decoration: _inputDecoration("Email"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: _boxDecoration(),
                    child: TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: _inputDecoration("Password"),
                    ),
                  ),
                  SizedBox(height: 30),
                  LoginButtonWidget(nameController: nameController, passController: passController),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: MyColors.secondaryColor,),
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 8,
          offset: Offset(2, 2),
        ),
      ],
    );
  }
}

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.nameController,
    required this.passController,
  });

  final TextEditingController nameController;
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if(nameController.text.isEmpty || passController.text.isEmpty){
           showCustomSnackBar(context, 'fill reqired fields', true);
        }else{
          showCustomSnackBar(context, 'login successfully', false);
        }
      },
      style: ElevatedButton.styleFrom(fixedSize: Size(ScreenSize.width * 0.9, 50),
        backgroundColor: MyColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        elevation: 5,
      ),
      child: Text(
        "LOGIN",
        style: TextStyle(fontSize: 18, color: MyColors.whiteColor),
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height - 50);
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height - 100, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 50);
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height - 20, size.width, size.height - 60);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
