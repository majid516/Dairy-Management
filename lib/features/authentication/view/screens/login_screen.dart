import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/authentication/view/widgets/login_stack_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: LoginStackWidget(
        nameController: nameController,
        passController: passController,
      ),
    );
  }
}
