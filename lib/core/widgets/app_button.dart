import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.textStyle,
    required this.onpressed,
    this.color,
    this.buttonWidth,
    this.buttonHeight,
    this.verticalPadding,
    this.horizntallPadding,
    this.borderRadis,
  });
  final String title;
  final TextStyle? textStyle;
  final VoidCallback onpressed;
  final Color? color;
  final double? buttonWidth,
      buttonHeight,
      verticalPadding,
      horizntallPadding,
      borderRadis;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all<Size>(
          Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
              vertical: verticalPadding ?? 10,
              horizontal: horizntallPadding ?? 12),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadis ?? 16),
        )),
        backgroundColor: WidgetStatePropertyAll(color ?? MyColors.mainBlue),
      ),
      child: Text(
        title,
        style: textStyle ?? TextStyles.style16WhiteSemiBold,
      ),
    );
  }
}
