import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  final String? message;
  final UserData? data;
  final bool? status;
  final int? code;

  SignUpResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });
  factory SignUpResponseModel.fromJson(Map<String,dynamic> jsonData) => _$SignUpResponseModelFromJson(jsonData);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({
    required this.token,
    required this.userName,
  });
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
  factory UserData.fromJson(Map<String, dynamic> jsonData) =>
      _$UserDataFromJson(jsonData);
}
