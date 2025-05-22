import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:checkout_doctor_app/feature/on_boarding/ui/widgets/get_started_button.dart';
import 'package:checkout_doctor_app/feature/on_boarding/ui/widgets/on_boarding_image_and_text.dart';
import 'package:checkout_doctor_app/feature/on_boarding/ui/widgets/on_boarding_upper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
          child: Column(
            spacing: 20.h,
            children: [
              DocAppLogo(),
              OnBoardingImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.style13GrayRegular,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    GetStartedButton()
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
