import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
       GoRouter.of(context).pushReplacement(MyRoutes.kloginScreen);
      },
      style: TextButton.styleFrom(
        minimumSize: Size(double.infinity, 53),
        backgroundColor: MyColors.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        'GetStarted',
        style: TextStyles.style16WhiteSemiBold,
      ),
    );
  }
}
