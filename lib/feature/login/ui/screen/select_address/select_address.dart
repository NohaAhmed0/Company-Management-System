import 'package:depi_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/cache/elveted_button.dart';
import '../../../../../core/theming/constant.dart';
import '../requst.dart';

class SelectAddress extends StatefulWidget {
  @override
  _SelectAddressState createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  int selectedIndex = 0;

  List<Map<String, String>> addresses = [
    {
      "city": "Riyadh",
      "street": "Non",
      "region": "Alexander Language School",
      "building": "2 Floor",
    },
    {
      "city": "Riyadh",
      "street": "Non",
      "region": "Alexander Language School",
      "building": "2 Floor",
    },
    {
      "city": "Riyadh",
      "street": "Non",
      "region": "Alexander Language School",
      "building": "2 Floor",
    },
  ];

  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          backgroundColor: const Color(0xFFF9FFF8),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(

              "Select Address",
              style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w700,
                 fontSize: 18.sp,
                 height: 1,
            letterSpacing: 0,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {Navigator.pushNamed(context, addAddress);},
                icon: Icon(Icons.add_circle_outline,
                    color: Colors.black, size: 24.sp),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(12.w),
                  itemCount: addresses.length,
                  itemBuilder: (context, index) {
                    final address = addresses[index];
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(16.w),
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          color: isSelected ? green : Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4.r,
                              spreadRadius: 0.r,
                            )
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            CircleAvatar(

                              radius: 26.r,
                              backgroundColor: isSelected
                                  ? Colors.white
                                  : green,
                              child: Icon(
                                Icons.location_on_rounded,
                                size: 24.sp,
                                color: isSelected
                                    ? Color(0xFFF5DF99)
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "City\n",
                                              style: TextStyle(
                                                color: Color(0xFFDFDFDF),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                height: 1.9,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "${address["city"]}",
                                              style: TextStyle(
                                                color: isSelected
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                height: 1.8,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 100.w,),

                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Street\n",
                                              style: TextStyle(
                                                color: Color(0xFFDFDFDF),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                height: 1.8,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "${address["street"]}",
                                              style: TextStyle(
                                                color: isSelected
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                height: 1.8,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Region\n",
                                                style: TextStyle(
                                                  color: Color(0xFFDFDFDF),
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                  height: 2,
                                                  letterSpacing: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "${address["region"]?.replaceFirst(' ', '\n')}",
                                                style: TextStyle(
                                                  color: isSelected ? Colors.white : Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.4,
                                                  letterSpacing: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      SizedBox(width: 44.w),

                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Building\n",
                                              style: TextStyle(
                                                color: Color(0xFFDFDFDF),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                height: 1.8,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "${address["building"]}",
                                              style: TextStyle(
                                                color: isSelected
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                height: 1.8,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(bottom: 30.h),
                child: elvetedButton1(onPressed: (){Navigator.pushNamed(context, requst);} , title: "Select"),
              )
            ],
          ),
        );
      }
  }

