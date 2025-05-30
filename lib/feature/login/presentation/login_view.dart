import 'package:checkout_doctor_app/core/helpers/spaceing.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:checkout_doctor_app/core/widgets/app_button.dart';
import 'package:checkout_doctor_app/core/widgets/app_text_field.dart';
import 'package:checkout_doctor_app/feature/login/presentation/widgets/already_have_account_widegt.dart';
import 'package:checkout_doctor_app/feature/login/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool myObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.style24BlueBold,
            ),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.style14GreyRegular,
            ),
            verticalSpace(30),
            Form(
              key: formKey,
              child: Column(
                children: [
                  AppTextField(
                    hintText: "email",
                  ),
                  verticalSpace(16),
                  AppTextField(
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
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.style12Blueregular,
                      )),
                  verticalSpace(30),
                  AppButton(
                    title: 'Login',
                    onpressed: () {},
                  ),
                  verticalSpace(41),
                  TermsAndConditionWidget(),
                  verticalSpace(25),
                  AlreadyHaveAccountWidegt(),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
