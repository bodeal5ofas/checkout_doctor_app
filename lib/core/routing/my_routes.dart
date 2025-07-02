import 'package:checkout_doctor_app/core/dependces_injection/dependces_injection.dart';
import 'package:checkout_doctor_app/feature/auth/signup/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/signup/presentation/sign_up_view.dart';
import 'package:checkout_doctor_app/feature/home/presentation/home_view.dart';
//import 'package:checkout_doctor_app/doc_app.dart';
import 'package:checkout_doctor_app/feature/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:checkout_doctor_app/feature/auth/login/presentation/login_view.dart';
import 'package:checkout_doctor_app/feature/on_boarding/ui/on_boarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MyRoutes {
  // static const String splachScreen = "/";
  static const String konBoardingScreen = "/";
  
  static const String kloginScreen = "/loginScreen";
  static const String kSignUpScreen = "/signUPScreen";
  static const String khomeScreen = "/homeScreen";
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: kloginScreen,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt.get<LoginCubit>(),
        child: LoginView(),
      ),
    ),
     GoRoute(
      path: kSignUpScreen,
      builder: (context, state) =>
      BlocProvider(
       create: (context) => getIt.get<SignUpCubit>(),
        child:
         SignUpView(),
      ),),
    GoRoute(
      path: konBoardingScreen,
      builder: (context, state) => OnBoardingView(),
    ),
    GoRoute(
      path: khomeScreen,
      builder: (context, state) => HomeView(),
    ),
  ]);
}
