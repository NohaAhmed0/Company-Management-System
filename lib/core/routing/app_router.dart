import 'package:depi_project/core/cache/constant.dart';
import 'package:depi_project/feature/login/ui/screen/home_screen.dart';
import 'package:depi_project/feature/login/ui/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
Route? generaterouter (RouteSettings settings){
  switch(settings.name){
    case splash :
      return MaterialPageRoute(builder: (context) => SplashScreen());
  }


}
}