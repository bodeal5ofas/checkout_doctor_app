import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
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
          },
          success: (data) {
            GoRouter.of(context).pop();
            GoRouter.of(context).pushReplacement(MyRoutes.khomeScreen);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
