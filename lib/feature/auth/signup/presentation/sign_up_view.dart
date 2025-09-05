import 'package:checkout_doctor_app/core/helpers/app_regex.dart';
import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:checkout_doctor_app/core/widgets/app_button.dart';
import 'package:checkout_doctor_app/core/widgets/app_text_field.dart';
import 'package:checkout_doctor_app/feature/auth/signup/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/signup/logic/sign_up_cubit/sign_up_state.dart';
import 'package:checkout_doctor_app/feature/auth/signup/presentation/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Create Account',
                  style: TextStyles.style32BlueBold,
                ),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.style16GrayRegular,
                ),
                SingUpForm(),
                BlocListener<SignUpCubit, SignUpState>(
                  listenWhen: (previous, current) => current is Loading|| current is Success || current is Error,
                  listener: (context, state) {
                    // TODO: implement listener
                    state.whenOrNull(
                      loading: () {
            return showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: MyColors.mainBlue,
                ),
              ),
            );
          },
success: (data) {
              GoRouter.of(context).pop();
      GoRouter.of(context).pushReplacement(MyRoutes.kloginScreen);

},
                      failure: (error) {
            GoRouter.of(context).pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: Icon(
                  Icons.error_outline,
                  color: Colors.red,
                ),
                title: Text(error),
                actions: [
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      child: Text(
                        "Got it",
                        style: TextStyles.style14BlueSemiBold,
                      ))
                ],
              ),
            );
          }
                    );
                  },
                  child: AppButton(
                    title: 'Create Account',
                    onpressed: () {
                      signUpAndVaildate(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUpAndVaildate(BuildContext context) async {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      await context.read<SignUpCubit>().emitSignUpState();
    }
  }
}
