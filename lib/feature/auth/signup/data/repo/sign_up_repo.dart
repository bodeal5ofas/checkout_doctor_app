import 'package:checkout_doctor_app/core/networking/api_result.dart';
import 'package:checkout_doctor_app/core/networking/api_service.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/model/sign_up_request_model.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/model/sign_up_response_model.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponseModel>> signUp(
      SignUpRequestModel signUpRequestModel) async {
    try {
      final response = await _apiService.signup(signUpRequestModel);
     return ApiResult.success(response);
    } on Exception catch (e) {
     return ApiResult.failure(e.toString());
    }
  }
}
