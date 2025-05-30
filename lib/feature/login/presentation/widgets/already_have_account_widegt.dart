import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountWidegt extends StatelessWidget {
  const AlreadyHaveAccountWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account yet?',
          style: TextStyles.style11greyregular.copyWith(
            color: MyColors.blackblue,
          ),
        ),
        TextSpan(
          text: ' Sign Up ',
          style: TextStyles.style12Blueregular,
        ),
      ]),
    );
  }
}
