import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_string_mobile.dart';

class RichText1 extends StatefulWidget {
  const RichText1({super.key});
  @override
  State<RichText1> createState() => _RichText1State();
}

class _RichText1State extends State<RichText1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: richTextQ(context),
    );
  }
}

richTextQ(context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return RichText(
    text: TextSpan(
      text: AppStringmobile.be,
      style: TextStyle(
        color: Colors.black,
        fontSize: screenWidth * 0.06, // 5% of screen width
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: AppStringmobile.creative,
          style: TextStyle(
            color: Colors.blue,
            fontSize: screenWidth * 0.06, // 5% of screen width
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.inyour,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.06, // 5% of screen width
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.ownway,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.06, // 5% of screen width
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.or,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.06, // 5% of screen width
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: AppStringmobile.community,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.06, // 5% of screen width
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
