import 'package:checkout_doctor_app/core/networking/api_result.dart';
import 'package:checkout_doctor_app/core/networking/api_service.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/models/login_request_body.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/models/login_response_body.dart';

// class LoginRepo {
//   final ApiService _apiService;
//   LoginRepo(this._apiService);
//   Future<ApiResult<LoginResponseBody>> login(
//       LoginRequestBody loginRequest) async {
//     try {
//       var resonse = await _apiService.login(loginRequest);
//      return ApiResult.success(resonse);
//     } catch (error) {
//      return ApiResult.failure('error');
//     }
//   }
// }
class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      var data = await _apiService.login(loginRequestBody);
      return ApiResult.success(data);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
