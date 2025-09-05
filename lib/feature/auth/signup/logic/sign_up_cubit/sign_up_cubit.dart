import 'package:bloc/bloc.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/model/sign_up_request_model.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/repo/sign_up_repo.dart';
import 'package:checkout_doctor_app/feature/auth/signup/logic/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';

//part 'sign_up_state.dart';
//part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());

  emitSignUpState() async {
    emit(SignUpState.loading());
    final response = await _signUpRepo.signUp(
      SignUpRequestModel(
        0,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        name: nameController.text,
        phone: phoneController.text,
      ),
    );
    response.mapOrNull(
      failure: (value) {
        emit(SignUpState.failure(value.error));
      },
      success: (value) {
        emit(SignUpState.success(value));
      },
    );
  }
}
