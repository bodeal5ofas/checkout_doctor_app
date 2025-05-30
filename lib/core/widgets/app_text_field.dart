import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.obscureText,
    this.textStyle,
    this.suffixIcon,
    required this.hintText,
    this.hintStyle,
    this.contentPadding, this.enableBorder, this.focusBorder,
  });
  final bool? obscureText;
  final TextStyle? textStyle;
  final Widget? suffixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? enableBorder;
  final InputBorder? focusBorder;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      style: textStyle ?? TextStyles.style14BlackBlueMedium,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.style14BlackBlueMedium,
        isDense: true,
        enabledBorder:enableBorder?? OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.lightgrey,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder:focusBorder?? OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.mainBlue,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
