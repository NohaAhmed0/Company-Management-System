import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/core/theming/colors.dart';

class onBoardingLogo extends StatelessWidget{
  const onBoardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 139.r,
            height: 139.r,
            margin: EdgeInsets.only(top: 113.h , left: 20 .w),
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Center(child: Image.asset(imageSplash)),
          );
  }
}