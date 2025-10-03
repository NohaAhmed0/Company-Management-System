import 'package:depi_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageOption extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const LanguageOption({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: black,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Radio<String>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
