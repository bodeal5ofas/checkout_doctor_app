import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_model.g.dart';

@JsonSerializable()
class SignUpRequestModel {
  final String? email;
  final String? password;
  final int? gender;
  @JsonKey(name: 'password_confirmation')
  final String? confirmPassword;
  final String? name;
  final String? phone;

  SignUpRequestModel(this.gender, {
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.name,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);
}
