import 'package:depi_project/core/theming/style_font.dart';
import 'package:flutter/widgets.dart';
import 'package:depi_project/core/theming/colors.dart';

class OnBoardingFontBy extends StatelessWidget {
  const OnBoardingFontBy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "By creating an account, you agree to our",
        style: StyleFont.baseTextStyle(color: Color(0x80000000),fontweight: FontWeight.w400),
        children: [
          TextSpan(
            text: "\nTerms and Conditions",
            style: StyleFont.baseTextStyle(color: green,fontweight: FontWeight.w700)
          ),
        ],
      ),
    );
  }
}
