import 'package:checkout_doctor_app/core/dependces_injection/dependces_injection.dart';
//import 'package:checkout_doctor_app/core/routing/my_routes.dart';
import 'package:checkout_doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:go_router/go_router.dart';
//
void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
// GoRouter router=;
//fake update
  setUpGitIt();
  //not fix
  runApp(const DocApp());
}
