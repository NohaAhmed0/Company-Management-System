import 'package:depi_project/core/theming/colors.dart';
import 'package:depi_project/core/theming/constant.dart';
import 'package:depi_project/feature/login/ui/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {

  final Widget icon;
  final double hight1;
  final Color iconBg;
  final String title;
  final String subtitle;
  final String time;
  final String? actionText;
  final Color? actionColor;

  const NotificationCard({
    super.key,
    required this.icon,
    required this.hight1,
    required this.iconBg,
    required this.title,
    required this.subtitle,
    required this.time,
    this.actionText,
    this.actionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 387.w,
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFDFDFDF).withOpacity(0.5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(181, 246, 246, 241),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: iconBg,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: icon),
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: const Color(0xFF1B1D21),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: const Color(0xFFB5B5B5),
                          fontSize: 14.sp,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    time,
                    style: TextStyle(
                      color: const Color(0xFFB5B5B5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            if (actionText != null) ...[
              SizedBox(height: 12.h),
              Divider(
                color: const Color(0xFFDFDFDF).withOpacity(0.5),
                thickness: 1,
                endIndent: 4,
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    actionText!,
                    style: TextStyle(
                      color: actionColor ?? Colors.blue,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                  const Spacer(),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,payment);
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 14,
                      color: green,
                    ),
                  )
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}