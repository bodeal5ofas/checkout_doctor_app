import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle   style24Black700Weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

   static TextStyle style32BlueBold = TextStyle(
    color: MyColors.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style13GrayRegular = TextStyle(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle style16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
