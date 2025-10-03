// ignore_for_file: camel_case_types

import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/core/cache/elveted_button.dart';
import 'package:depi_project/core/theming/colors.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/widget/language_option.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/widget/on_boarding_font1.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/widget/on_boarding_font_by.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/widget/on_boarding_fontselect.dart';
import 'package:depi_project/feature/login/ui/screen/onboarding6/widget/on_boarding_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onBoarding1 extends StatefulWidget {
  const onBoarding1({super.key});

  @override
  State<onBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<onBoarding1> {
  String selectLanguage = "en";

  void change(String? value) {
    setState(() {
      selectLanguage = value!;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            onBoardingLogo(),
           SizedBox(height: 40.h),
            onBoardingFont1(),
          SizedBox(height: 60.h),
          onBoardingFontSelect(),
            SizedBox(height: 20.h),
        
            LanguageOption(title: "English", value:"en", groupValue: selectLanguage, onChanged: change),
            Opacity(opacity:0.1 ,child: Divider(indent: 20.w,endIndent: 20.w,color: black,thickness: 1)),
        
            LanguageOption(title: "Arabic", value: "ar", groupValue: selectLanguage, onChanged: change),
        
            Opacity(opacity:0.1,child: Divider(indent: 20.w,endIndent: 20.w,color: black,thickness: 1)) ,
        
            SizedBox(height: 18.h),
        
         Container(
          height: 110.h,
          width: 285.w,
          margin: EdgeInsets.only(left: 20.w),
          padding: EdgeInsets.only(left: 50.w),
          child: OnBoardingFontBy(),
        ),
        
        
                Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: elvetedButton1(
            onPressed: () {
              Navigator.pushNamed(context, expertScreen1);
            },
            title: "Enter",
          ),
        ),

          ]
        
        ),
      );
  }
}
