import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAccountWidegt extends StatelessWidget {
  const AlreadyHaveAccountWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(MyRoutes.kSignUpScreen);
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'Donot have account account ?',
            style: TextStyles.style11greyregular.copyWith(
              color: MyColors.blackblue,
            ),
          ),
          TextSpan(
            text: ' Sign Up ',
            style: TextStyles.style12Blueregular,
          ),
        ]),
      ),
    );
  }
}
