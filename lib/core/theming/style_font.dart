import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StyleFont {
  static TextStyle baseTextStyle({required color , fontweight }) {
    return TextStyle(
      color: color,
      fontFamily: 'Quicksand',
      fontWeight: fontweight,
      fontSize: 12.sp,
      height: 1.6667,
      letterSpacing: -0.2,
    );
    
  }
}
