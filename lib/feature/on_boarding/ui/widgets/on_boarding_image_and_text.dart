import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingImageAndText extends StatelessWidget {
  const OnBoardingImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset('assets/images/doc_app_logo_low_brightness.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withAlpha(0),
              ],
              stops: [0.14, 0.4],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor_image.png'),
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor \nAppointment App",
            style: TextStyles.style32BlueBold.copyWith(height: 1.5),
          ),
        ),
        
      ],
    );
  }
}
