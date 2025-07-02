import 'package:checkout_doctor_app/core/networking/api_result.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/models/login_request_body.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/repo/login_repo.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState(LoginRequestBody loginRequest) async {
    emit(LoginState.loading());

    final response = await _loginRepo.login(loginRequest);
    // مفيش when
    response.when(
        success: (data) {
          emit(LoginState.success(data));
        },
        failure: (error) {
          emit(LoginState.failure(error));
        },);
  }
}
