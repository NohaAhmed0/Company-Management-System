import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/feature/login/ui/payment/payment.dart';
import 'package:depi_project/feature/login/ui/screen/contact_us/contact_us.dart';
import 'package:depi_project/feature/login/ui/screen/expert_screen/expert.dart';
import 'package:depi_project/feature/login/ui/screen/notification/notification_screen.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/on_boarding1.dart';
import 'package:depi_project/feature/login/ui/screen/select_address/select_address.dart';
import 'package:depi_project/feature/login/ui/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../feature/login/ui/screen/add_adress/add_address.dart';
import '../../feature/login/ui/screen/payment/payment.dart';
import '../../feature/login/ui/screen/requst.dart';

class AppRouter {
Route? generaterouter (RouteSettings settings){
  switch(settings.name){
    case splash :
      return MaterialPageRoute(builder: (context) => SplashScreen());

    case onboarding :
    return MaterialPageRoute(builder: (context) => onBoarding1());

    case expertScreen1:
    return MaterialPageRoute(builder:(context) => ExpertScreen());

    case contactUs:
    return MaterialPageRoute(builder:(context) => ContactUs());

    case notificationpage:
    return MaterialPageRoute(builder:(context) => NotificationPage());

    case payment:
    return MaterialPageRoute(builder:(context) => Payment());

    case selectAddress:
    return MaterialPageRoute(builder:(context) => SelectAddress());

    case addAddress:
      return MaterialPageRoute(builder:(context) => AddAddress());

    case requst:
      return MaterialPageRoute(builder:(context) => CompletionPopup());

  }
  return null;


}
}