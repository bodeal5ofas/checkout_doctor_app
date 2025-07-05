import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/core/themeing/colors.dart';
import 'package:checkout_doctor_app/core/themeing/text_styles.dart';
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
      builder: (context, child) {
        TextStyles();
        return MaterialApp.router(
        routerConfig: MyRoutes.router,
        title: 'Doc App',
        builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler:TextScaler.linear(1.0) ),
              child: child!,
            ),
        theme: ThemeData(
            primaryColor: MyColors.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
//        initialRoute: MyRoutes.onBoardingScreen,
      );}
    );
  }
}
