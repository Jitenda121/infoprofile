import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_string_mobile.dart';
import 'package:flutter_application_1/res/component/app_color.dart';

class RichText3 extends StatefulWidget {
  const RichText3({super.key});
  @override
  State<RichText3> createState() => _RichText3State();
}

class _RichText3State extends State<RichText3> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: richTextJ(context, screenHeight),
    );
  }
}

richTextJ(context, screenHeight) {
  return RichText(
    text: TextSpan(
      text: AppStringmobile.what,
      style: TextStyle(
        color: Colors.black,
        fontSize: screenHeight * 0.03, // Adjust the multiplier as needed
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: AppStringmobile.infoprofile1,
          style: TextStyle(
            color: AppColor.myColor1,
            fontSize: screenHeight * 0.03, // Adjust the multiplier as needed
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.you,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenHeight * 0.03, // Adjust the multiplier as needed
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
