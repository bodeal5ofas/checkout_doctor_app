import 'package:checkout_doctor_app/core/helpers/spaceing.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildVAildationRow('At least 1 lower case', hasLowerCase),
          verticalSpace(2),
        buildVAildationRow('At least 1 upper case', hasUpperCase),
        verticalSpace(2),
        buildVAildationRow('At least 1 number ', hasNumber),
        verticalSpace(2),
        buildVAildationRow('At least 1 special charchter', hasSpecialChar),
        verticalSpace(2),
     
        
        buildVAildationRow('At least 8  charcter long', hasMinLength),
      ],
    );
  }

  Widget buildVAildationRow(String text, bool hasVaildate) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: MyColors.grey,
        ),
        horzontalSpace(5),
        Text(
          text,
          style: TextStyles.style14BlackBlueMedium.copyWith(
            decoration:hasVaildate? TextDecoration.lineThrough: null,
            decorationColor: Colors.green,
            decorationThickness: 2.5,
            color: hasVaildate ? MyColors.grey : Colors.black,
          ),
        )
      ],
    );
  }
}
