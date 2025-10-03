import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/core/cache/elveted_button.dart';
import 'package:depi_project/core/theming/colors.dart';
import 'package:depi_project/feature/login/ui/screen/contact_us/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpertScreen extends StatefulWidget {
  ExpertScreen({super.key});
  @override
  State<ExpertScreen> createState() => _EasyProcess();
}

class _EasyProcess extends State<ExpertScreen> {

  final int totalDots = 3;
  
  final int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Positioned(
            left: 18.w,
            top: 135.h,
            child: Image.asset(imageVector),
          ),
          Positioned(
            left: 55.w,
            top: 124.h,
            child: Image.asset(imageEsay),
          ),
          Positioned(
            left: 107.w,
            top: 480.h,
            child: Text(
              "Easy Process",
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 34.sp,
                height: 1.35,
                color: black,
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            top: 550.h,
            left: 80.w,
            
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Find all your house needs in one place.\nWe provide every service to make your\nhome experience smooth.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  height: 1.7,
                  color: black,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
         
          Positioned(
            top: 699.h,
            left: 185.w,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(totalDots, (index) {
                bool isActive = index == currentPage  ;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  width: isActive ? 30.w : 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: isActive ? Color(0xFFF5DF99) : Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(100),
                  ),
                );
              }),
            ),
          ),
           
           Positioned( 
            top: 760.h,
            left: 20.w,
            child: elvetedButton1(onPressed: (){Navigator.pushNamed(context, contactUs);} , title: "Enter")
           )

        ],
      ),
    );
  }
}
