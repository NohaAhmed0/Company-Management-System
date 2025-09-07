import 'package:depi_project/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width:139.r,
            height: 139.r,
            margin: EdgeInsets.only(top: 100.h, left: 20.w),
            decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(30.r)),
          ),

        ],
      ),
    );
  }
}