import 'package:checkout_doctor_app/doc_app.dart';
import 'package:checkout_doctor_app/feature/login/presentation/login_view.dart';
import 'package:checkout_doctor_app/feature/on_boarding/ui/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class MyRoutes {
 // static const String splachScreen = "/";
  static const String konBoardingScreen = "/";
   static const String kloginScreen = "/login";
  static const String khomeScreen = "/homeScreen";
 static GoRouter router = GoRouter(routes: [
    GoRoute(path: kloginScreen,builder: (context, state) =>LoginView() ,),
    
    GoRoute(path: konBoardingScreen,builder: (context, state) =>OnBoardingView() ,)
  ]);
  
}
