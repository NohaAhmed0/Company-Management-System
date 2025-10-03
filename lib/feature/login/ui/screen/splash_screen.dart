import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/core/theming/colors.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/on_boarding1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
    const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: onBoarding1(),
      pageTransitionType: PageTransitionType.rightToLeft,
      splash:Container(
        width: double.infinity,
        height: double.infinity,
        color: green,
        child:Image.asset(imageSplash),
      ),
    splashIconSize: double.infinity,
      duration:1000,
    );
  }
}