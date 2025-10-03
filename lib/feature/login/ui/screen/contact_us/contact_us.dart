import 'package:depi_project/core/cache/elveted_button.dart';
import 'package:depi_project/core/theming/colors.dart';
import 'package:depi_project/core/theming/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        title:  Text(
          "Contact Us",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700 ,fontSize: 18.sp),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18.h,),
               Text(
                "We are pleased to contact you to\nhear your inquiries and opinions",
              
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Color(0xFFB5B5B5),
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                  letterSpacing: 0,
                ),
              ),
            
            SizedBox(height: 35.h),


            Text("Name",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, height: 1.625 , letterSpacing: -0.36 ,color: Color(0xFF161616))),
            SizedBox(height: 6.h),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter Your Name" ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFDFDFDF),width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: green, width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(height: 18.h),

           
            Text("Phone",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, height: 1.625 , letterSpacing: -0.36 ,color: Color(0xFF161616)),
            ),
            SizedBox(height: 6),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter Your Phone",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFDFDFDF),width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: green,width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(height: 18.h),

           
            Text("Message",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, height: 1.625 , letterSpacing: -0.36 ,color: Color(0xFF161616))),
            SizedBox(height: 6.h),
            TextField(
              controller: _messageController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Enter Your Message",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFDFDFDF),width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFDFDFDF),width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(height: 40.h),
             
             elvetedButton1(onPressed: (){Navigator.pushNamed(context, notificationpage);}, title: "Send")
            
          ],
        ),
      ),
    );
  }
}

