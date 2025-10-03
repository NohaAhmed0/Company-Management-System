import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:depi_project/core/theming/colors.dart';

class onBoardingFont1 extends StatelessWidget {
  const onBoardingFont1({super.key});

 @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              "Find Your\nHome Service", 
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700, 
                fontSize: 48.sp, 
                height: 1,
                color: black, 
                letterSpacing: 1, 
              ),
            ),
          );

}
}