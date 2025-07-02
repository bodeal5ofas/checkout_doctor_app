import 'package:checkout_doctor_app/core/helpers/app_regex.dart';
import 'package:checkout_doctor_app/core/widgets/app_text_field.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/widgets/password_validations.dart';
import 'package:checkout_doctor_app/feature/auth/signup/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({super.key});

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  bool myObscureText = false;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool hasSpecialCharcther = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setUpPasswordVaildation();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        spacing: 20,
        children: [
          AppTextField(
              hintText: 'Name',
              controller: context.read<SignUpCubit>().nameController,
              vaildator: (value) {
                if (value!.length < 3) {
                  return 'please Name must be more than 3 char';
                }
                return null;
              }),
          AppTextField(
              hintText: 'Phone Nmber',
              //  controller: ,
              controller: context.read<SignUpCubit>().phoneController,
              vaildator: (value) {
                if (!AppRegex.isPhoneNumberVailaid(value!)) {
                  return 'Enter vaild Phone Number';
                }
                return null;
              }),
          AppTextField(
              hintText: 'Email',
              //  controller: ,
              controller: context.read<SignUpCubit>().emailController,
              vaildator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailVailaid(value)) {
                  return 'Enter vaild email';
                }
                return null;
              }),
          AppTextField(
              hintText: 'Password',
              controller: context.read<SignUpCubit>().passwordController,
              suffixIcon: IconButton(
                onPressed: () {
                  myObscureText = !myObscureText;
                  setState(() {});
                },
                icon: Icon(myObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              ),
              //  controller: ,
              obscureText: myObscureText,
              // suffixIcon: ,
              vaildator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordVailaid(value)) {
                  return 'Enter vaild password';
                }
                return null;
              }),
          AppTextField(
              hintText: 'Confirm Password',
              //  controller: ,
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
              controller: context.read<SignUpCubit>().confirmPasswordController,
              vaildator: (value) {
                if (passwordController.text != value ||
                    value == null ||
                    value.isEmpty) {
                  return 'donot match password';
                }
                return null;
              }),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialCharcther,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  void setUpPasswordVaildation() {
    passwordController.addListener(
      () {
        setState(() {
          hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
          hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
          hasNumber = AppRegex.hasNumber(passwordController.text);
          hasSpecialCharcther =
              AppRegex.hasSpecialChar(passwordController.text);
          hasMinLength = AppRegex.hasMinLength(passwordController.text);
        });
      },
    );
  }
}
