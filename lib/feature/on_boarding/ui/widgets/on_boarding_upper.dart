import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocAppLogo extends StatelessWidget {
  const DocAppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        SvgPicture.asset(
          'assets/images/doc_app_logo.svg',
        ),
        Text(
          'Docdoc',
          style: TextStyles.style24Black700Weight,
        )
      ],
    );
  }
}
