import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/bottomlogincard.dart';
import 'package:flutter_application_1/card/cardmobile.dart';
import 'package:flutter_application_1/card/cardmobile2.dart';
import 'package:flutter_application_1/card/mouseregion.dart';
import 'package:flutter_application_1/custom/custom_sized_box.dart';
import 'package:flutter_application_1/custom/custom_text_style.dart';
import 'package:flutter_application_1/custom/richtext1mobile.dart';
import 'package:flutter_application_1/custom/richtext2mobile.dart';
import 'package:flutter_application_1/custom/richtext3mobile.dart';
import 'package:flutter_application_1/res/app_string.dart';
import 'package:flutter_application_1/res/app_string_mobile.dart';
import 'package:flutter_application_1/res/component/app_color.dart';
import 'package:flutter_application_1/res/component/app_images.dart';
class MobileView extends StatefulWidget {
  const MobileView({super.key});
  @override
  State<MobileView> createState() => _MobileViewState();
}
class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    bool isResponsive = MediaQuery.of(context).size.width < 360;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColor.myColor,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(AppImage.leftcontainerimages),
              Positioned(
                top: screenHeight * 0.1,
                left: 0,
                right: 0,
                child: Image.asset(AppImage.rightcontainerimages),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.1,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Image.asset(
                          AppImage.logo33info,
                        ),
                      ),
                    ],
                  ),
                  CustomTextStyle(
                    text: AppString.meetyourfriend,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  CustomTextStyle(
                      text: AppString.connection,
                      fontSize: screenHeight * 0.035,
                      color: AppColor.myColor1,
                      fontWeight: FontWeight.bold),
                  const CustomSizedBox(height: 25),
                  CustomTextStyle(
                    text: AppString.buildfaster,
                    fontWeight: FontWeight.w400,
                  ),
                  const CustomSizedBox(
                    height: 30,
                  ),
                  //ResponsiveCard(),
                  isResponsive ? LoginCard() : ResponsiveCard(),
                  const CustomSizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        SizedBox(
                            height: screenHeight * 0.07,
                            width: 170,
                            child: Image.asset(AppImage.appleplayimages)),
                        SizedBox(
                            height: screenHeight * 0.07,
                            width: 170,
                            child: Image.asset(AppImage.googleplayimages))
                      ],
                    ),
                  ),
                  const CustomSizedBox(
                    height: 80,
                  ),
                  CustomTextStyle(
                    text: AppStringmobile.infoprofile,
                    fontSize: screenHeight * 0.034,
                    fontWeight: FontWeight.bold,
                  ),
                  const CustomSizedBox(
                    height: 10,
                  ),
                  richTextJ(context, screenHeight),
                  const CustomSizedBox(
                    height: 70,
                  ),
                  const IosTablet(),
                  richTextW(context),
                  const CustomSizedBox(height: 20),
                  CustomTextStyle(
                    text: AppString.domain,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    //fontSize: MediaQuery.of(context).size.width * .04,
                  ),
                  SizedBox(
                      width: 350,
                      height: 350,
                      child: Image.asset(AppImage.becreativeimage)),
                  richTextQ(context),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextStyle(
                    text: AppString.hereweproduce,
                    fontSize: 17,
                    // MediaQuery.of(context).size.width * .04,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 5, 106, 189),
                        height: 450,
                      ),
                      SizedBox(
                          height: 150,
                          child: Image.asset(AppImage.imagesstack1)),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                            height: 150,
                            child: Image.asset(AppImage.imagesstack2)),
                      ),
                      Column(
                        children: [
                          Image.asset(AppImage.imagestransfer),
                          CustomTextStyle(
                            text: AppStringmobile.download,
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: Wrap(
                              direction: Axis.horizontal,
                              children: [
                                SizedBox(
                                    height: 40,
                                    width: 170,
                                    child:
                                        Image.asset(AppImage.googleimageslogo)),
                                SizedBox(
                                    height: 40,
                                    width: 170,
                                    child:
                                        Image.asset(AppImage.appleimageslogo))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      )
                    ],
                  ),
                  Image.asset(AppImage.makefriend),
                  CustomTextStyle(
                    text: AppStringmobile.makefriend,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextStyle(
                    text: AppStringmobile.thebestdoaminmobile,
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const MobileCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
