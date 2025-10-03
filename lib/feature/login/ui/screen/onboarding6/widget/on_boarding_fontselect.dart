import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:depi_project/core/theming/colors.dart';

class onBoardingFontSelect extends StatelessWidget {
  const onBoardingFontSelect({super.key});

 @override
  Widget build(BuildContext context) { 
    return Padding(
        padding: EdgeInsets.only(left: 20.w),
            child: Text(
              "Select Language", 
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700, 
                color: black,
                fontSize: 20.sp, 
                letterSpacing: 0, 
              ),
            ),
          );

  }
}