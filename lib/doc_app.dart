import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: MyRoutes.router,
        title: 'Doc App',
        theme: ThemeData(
            primaryColor: MyColors.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
//        initialRoute: MyRoutes.onBoardingScreen,
      ),
    );
  }
}
