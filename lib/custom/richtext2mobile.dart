import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_string_mobile.dart';
class RichText2 extends StatefulWidget {
  const RichText2({super.key});
  @override
  State<RichText2> createState() => _RichText2State();
}
class _RichText2State extends State<RichText2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: richTextW(context),
    );
  }
}
richTextW(context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return RichText(
    text: TextSpan(
      text: AppStringmobile.youcancreate,
      style: TextStyle(
        color: Colors.black,
        fontSize: screenWidth * 0.06, // Adjust the multiplier as needed
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: AppStringmobile.multiple,
          style: TextStyle(
            color: Colors.blue,
            fontSize: screenWidth * 0.06, // Adjust the multiplier as needed
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.forn,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.06, // Adjust the multiplier as needed
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.youraccount,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.06, // Adjust the multiplier as needed
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
