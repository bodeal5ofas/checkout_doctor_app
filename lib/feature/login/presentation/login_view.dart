import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mainBlue,
        title: Text(
          "Login ",
          style: TextStyles.style16WhiteSemiBold,
        ),
        centerTitle: true,
      ),
    );
  }
}
