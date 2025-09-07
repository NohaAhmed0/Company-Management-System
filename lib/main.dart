import 'package:depi_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {

  runApp(MyApp(approuter:AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter approuter;
  const MyApp({super.key , required this.approuter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_ , child) {
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: approuter.generaterouter,
          );
    }
    );
  }
}
