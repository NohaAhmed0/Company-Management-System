import 'package:depi_project/core/theming/colors.dart';
import 'package:depi_project/feature/login/ui/screen/notification/widget/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
        title: Text(
          "Notification",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            height: 1,
            letterSpacing: 0,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 18.w),
        children: [
          NotificationCard(
            hight1: 156.h,
            icon: Image.asset(
              'assets/Group (3).png',
              width: 30.w,
              height: 30.h,
            ),
            iconBg: const Color(0xFFD8FDDC),
            title: "Order Confirmed",
            subtitle: "Your order is Done\nregister payment methods",
            time: "1 hr",
            actionText: "Complete payment methods",
            actionColor: green,
          ),
          NotificationCard(
            hight1: 96.h,
            icon: Image.asset(
              'assets/Group (4).png',
              width: 30.w,
              height: 30.h,
            ),
            iconBg: Colors.grey.shade200,
            title: "Reminder",
            subtitle: "House Shifting - #2F33J\nscheduled Tomorrow.",
            time: "2 hr",
          ),
          NotificationCard(
            hight1: 96.h,
            icon: Image.asset(
              'assets/Group (5).png',
              width: 30.w,
              height: 30.h,
            ),
            iconBg: Colors.grey.shade200,
            title: "Order Canceled",
            subtitle: "Your order is Canceled\nTry again",
            time: "Yesterday",
          ),
        ],
      ),
    );
  }
}
