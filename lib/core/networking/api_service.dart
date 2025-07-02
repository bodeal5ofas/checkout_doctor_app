import 'package:checkout_doctor_app/core/networking/api_constant.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/models/login_request_body.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/models/login_response_body.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/model/sign_up_request_model.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/model/sign_up_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequest,
  );
  @POST(ApiConstant.sigup)
  Future<SignUpResponseModel> signup(
    @Body() SignUpRequestModel signUpRequest,
  );
}
