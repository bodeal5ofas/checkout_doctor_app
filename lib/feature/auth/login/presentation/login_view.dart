import 'package:checkout_doctor_app/core/helpers/spaceing.dart';
//import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:checkout_doctor_app/core/widgets/app_button.dart';
//import 'package:checkout_doctor_app/core/widgets/app_text_field.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/models/login_request_body.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/widgets/already_have_account_widegt.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/widgets/email_and_password.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/widgets/login_bloc_listener.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  
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
          mainAxisAlignment: MainAxisAlignment.center,
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
            Column(
              children: [
                EmailAndPassword(),
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
                  onpressed: () {
                    vaildateThenDoLogin(context);
                  },
                ),
                verticalSpace(41),
                TermsAndConditionWidget(),
                verticalSpace(25),
                AlreadyHaveAccountWidegt(),
                LoginBlocListener(),
              ],
            ),
          ],
        ),
      ))),
    );
  }

  void vaildateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(
            LoginRequestBody(
              email:context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
