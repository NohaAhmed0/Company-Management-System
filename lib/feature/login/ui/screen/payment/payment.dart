import 'package:depi_project/core/cache/elveted_button.dart';
import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/feature/login/ui/payment/widget/image_widget.dart';
import 'package:depi_project/feature/login/ui/screen/expert_screen/expert.dart';
import 'package:depi_project/feature/login/ui/screen/payment/widget/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFF9FFF8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Payment",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            height: 1,
            letterSpacing: 0,
          ),
        ),
      ),
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 28.w ,vertical: 18.h),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
           children: [

           ImageWidget(imagePayment: "assets/Group 7003.png", ),
           SizedBox(height: 14.h),
           ImageWidget(imagePayment: "assets/Group7004.png", ),
            Spacer(),

       Padding(
         padding: EdgeInsets.only(bottom: 10.h),
         child: elvetedButton1(
             onPressed: () {
             Navigator.pushNamed(context, selectAddress);
             },
             title: "Add Card",
             ),
       ),


         ],
       ),
     ),
    );

  }
}