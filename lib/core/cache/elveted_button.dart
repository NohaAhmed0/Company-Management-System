import 'package:depi_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class elvetedButton1 extends StatelessWidget{
  final VoidCallback onPressed;
   final title;
   const elvetedButton1 ({super.key, required this.onPressed , required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
  width:388.w ,
  height: 60.h,
  
  child: ElevatedButton(onPressed: onPressed, style: 
  ElevatedButton.styleFrom(backgroundColor: green,elevation: 0 ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r))),
  
  child: Center(
    child: Text(title,style:TextStyle(
      color: white,fontFamily:'Quicksand',
      fontSize: 18.sp
     ,fontWeight: FontWeight.w700,
     height: 1.4444.w,
     letterSpacing: 0.w,
    ),),
  ),),
);
  }
}