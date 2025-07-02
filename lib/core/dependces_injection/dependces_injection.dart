import 'package:checkout_doctor_app/core/networking/api_service.dart';
import 'package:checkout_doctor_app/core/networking/dio_factory.dart';
import 'package:checkout_doctor_app/feature/auth/login/data/repo/login_repo.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/signup/data/repo/sign_up_repo.dart';
import 'package:checkout_doctor_app/feature/auth/signup/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
setUpGitIt() {
  //getIt.registerSingleton<Dio>(Dio());// register Dio instance
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio,
    ),
  );

  //
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt.get<ApiService>()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginRepo>()),
  );

  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(getIt.get<ApiService>()),
  );
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(getIt.get<SignUpRepo>()),
  );
}
