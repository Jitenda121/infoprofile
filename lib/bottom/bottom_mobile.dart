import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/custom_text_style.dart';
import 'package:flutter_application_1/res/app_string_mobile.dart';
import 'package:flutter_application_1/res/component/app_color.dart';

class BottomLoginCard extends StatefulWidget {
  const BottomLoginCard({Key? key});

  @override
  State<BottomLoginCard> createState() => _BottomLoginCardState();
}

class _BottomLoginCardState extends State<BottomLoginCard> {
  @override
  Widget build(BuildContext context) {
    // Define MediaQuery values
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = screenHeight * 0.35;
    double textFontSize = screenHeight * 0.025;
    double iconSize = screenHeight * 0.025;
    double buttonHeight = screenHeight * 0.065;

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Text(
                "Try Infoprofile for free",
                style: TextStyle(
                    fontSize: textFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                child: Wrap(
                  children: [
                    Icon(Icons.check, size: iconSize),
                    Text("   Multiple profiles"),
                  ],
                ),
              ),
              SizedBox(
                child: Wrap(
                  children: [
                    Icon(Icons.check, size: iconSize),
                    Text("  Creative"),
                  ],
                ),
              ),
              SizedBox(
                child: Wrap(
                  children: [
                    Icon(Icons.check, size: iconSize),
                    Text("  Build Connections"),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.045,
              ),
              Wrap(
                children: [
                  SizedBox(
                    height: buttonHeight,
                    width: screenHeight * 0.12,
                    child: Center(
                        child: CustomTextStyle(
                      text: AppStringmobile.login,
                      fontSize: screenHeight * 0.03,
                      fontWeight: FontWeight.bold,
                      color: AppColor.myColor1,
                    )),
                  ),
                  SizedBox(
                    width: screenHeight * 0.04,
                  ),
                  Container(
                    height: buttonHeight,
                    width: screenHeight * 0.12,
                    decoration: BoxDecoration(
                      color: AppColor.myColor1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: CustomTextStyle(
                      text: AppStringmobile.signup,
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
