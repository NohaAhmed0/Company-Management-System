import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();

  
    SystemChrome.setSystemUIOverlayStyle
    (const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark , 
      statusBarIconBrightness: Brightness.dark, )
  );

  runApp(MyApp(approuter:AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter approuter;
  const MyApp({super.key , required this.approuter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_ , child) {
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: approuter.generaterouter,
          initialRoute: splash,
          );
    }
    );
  }
}
