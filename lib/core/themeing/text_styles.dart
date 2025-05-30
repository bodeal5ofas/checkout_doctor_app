import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/fontweight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle   style24Blackbold = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontweightHelper.bold,
  );
  static TextStyle   style24BlueBold = TextStyle(
    color: MyColors.mainBlue,
    fontSize: 24.sp,
    fontWeight: FontweightHelper.bold,
  );

   static TextStyle   style14GreyRegular  = TextStyle(
    color: MyColors.grey,
    fontSize: 14.sp,
    fontWeight: FontweightHelper.regular,
  );

   static TextStyle style32BlueBold = TextStyle(
    color: MyColors.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style14BlackBlueMedium = TextStyle(
    color: MyColors.blackblue,
    fontSize: 14.sp,
    fontWeight: FontweightHelper.medium,
  );
  static TextStyle style12Blueregular = TextStyle(
    color: MyColors.mainBlue,
    fontSize: 12.sp,
    fontWeight: FontweightHelper.regular,
  );
  static TextStyle style16GrayRegular = TextStyle(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontweightHelper.regular
  );
  static TextStyle style16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontweightHelper.semiBold,
  );
  static TextStyle style11greyregular = TextStyle(
    color: MyColors.grey,
    fontSize: 11.sp,
    fontWeight: FontweightHelper.regular,
  );
   static TextStyle style11blackbold = TextStyle(
    color: MyColors.blackblue,
    fontSize: 11.sp,
    fontWeight: FontweightHelper.bold,
  );
}
