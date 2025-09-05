import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.style11greyregular),
        TextSpan(
          text: 'Terms & Conditions ',
          style: TextStyles.style11blackbold,
        ),
        TextSpan(
          text: 'and ',
          style: TextStyles.style11greyregular,
        ),
        TextSpan(
            text: ' PrivacyPolicy. ',
            style: TextStyles.style11blackbold.copyWith(height: 1.5)),
      ]),
    );
  }
}
