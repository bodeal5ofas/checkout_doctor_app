import 'package:checkout_doctor_app/core/helpers/app_regex.dart';
import 'package:checkout_doctor_app/core/helpers/spaceing.dart';
//import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:checkout_doctor_app/core/widgets/app_text_field.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool myObscureText = true;
  
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordVaildation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextField(
            vaildator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailVailaid(value)) {
                return 'please enter vaild  email';
              }
              return null;
            },
            controller: context.read<LoginCubit>().emailController,
            hintText: "email",
          ),
          verticalSpace(16),
          AppTextField(
            controller: context.read<LoginCubit>().passwordController,
            vaildator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordVailaid(value)) {
                return 'please enter vaild  password';
              }
               return null;
            },
            hintText: "password",
            obscureText: myObscureText,
            suffixIcon: IconButton(
              onPressed: () {
                myObscureText = !myObscureText;
                setState(() {});
              },
              icon: Icon(myObscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined),
            ),
          ),
          verticalSpace(25),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
          ),
        ],
      ),
    );
  }

  setupPasswordVaildation() {
    passwordController.addListener(
      () {
        setState(() {
          hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
          hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
          hasMinLength = AppRegex.hasMinLength(passwordController.text);
          hasNumber = AppRegex.hasNumber(passwordController.text);
          hasSpecialChar = AppRegex.hasSpecialChar(passwordController.text);
        });
      },
    );
  }
}
