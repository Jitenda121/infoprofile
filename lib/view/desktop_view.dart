import 'package:flutter/material.dart';
import 'package:flutter_application_1/card/cardweb.dart';
import 'package:flutter_application_1/res/app_string.dart';
import 'package:flutter_application_1/res/component/app_color.dart';
import 'package:flutter_application_1/res/component/app_images.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  bool isHoveredVisitingCard = false;
  bool isHoveredShareMedia = false;
  bool isHoveredMultipleProfile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.myColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                    color: AppColor.myColor,
                    child: const Column(
                      children: [],
                    )),
              ),
              Positioned(
                right: 0,
                child: Container(
                    height: 800,
                    // width: 100,
                    child: Image.asset(AppImage.rightcontainerimages)),
              ),
              Positioned(
                top: 0,
                child: Container(
                  height: 600,
                  child: Image.asset(AppImage.leftcontainerimages),
                ),
              ),
              Positioned(
                top: 40,
                left: 100,
                child: Image.asset(
                  AppImage.infoprofilelogo,
                  width: MediaQuery.of(context).size.width * .9,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            AppString.meetyourfriend,
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .003,
                          ),
                          Text(
                            AppString.connection,
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .003,
                          ),
                          Text(AppString.buildfaster),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .003,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .003,
                              ),
                              Image.asset(
                                AppImage.appleplayimages,
                                width: 170,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AppImage.googleplayimages,
                                width: 170,
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          responsiveCard1(),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: AppString.infoprofiledesigned,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          children: <TextSpan>[
                            TextSpan(
                              text: AppString.infoprofileprovide,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: AppString.you,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            width: 150,
                          ),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHoveredVisitingCard = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveredVisitingCard = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: isHoveredVisitingCard
                                    ? Colors.lightBlue[900]
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 6, 96, 169),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                      ),
                                      child: Image.asset(
                                          AppImage.visitingcardimages),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      AppString.visitingcard,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      AppString.sharevisitingcard,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(AppString.bestconnection,
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(AppString.world,
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHoveredShareMedia = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveredShareMedia = false;
                              });
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  color: isHoveredShareMedia
                                      ? Colors.lightBlue[900]
                                      : Colors.transparent,
                                  // color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 6, 96, 169),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                        child: Image.asset(AppImage.linkimages),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        AppString.share,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        AppString.sharefovourite,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(AppString.video,
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(AppString.shareconnection,
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(AppString.community,
                                          style: TextStyle(fontSize: 15)),
                                    )
                                  ],
                                )),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHoveredMultipleProfile = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveredMultipleProfile = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: isHoveredMultipleProfile
                                    ? Colors.lightBlue[900]
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 6, 96, 169),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                      ),
                                      child: Image.asset(AppImage.connection),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      AppString.multipleprofile,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      AppString.youcanchoosemultipleprofile,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.0,
                                    ),
                                    child: Text(AppString.profileaccount,
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 600,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.40,
                                height:
                                    MediaQuery.of(context).size.height * 0.40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: AppString.youc,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: AppString.multipleprofile,
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      Colors.lightBlue[900])),
                                          TextSpan(
                                              text: AppString.foryouraccount,
                                              style: TextStyle(
                                                  height: 1.5,
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    //
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      AppString.domain,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                AppImage.multipleprofileimages,
                                width: 500,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 600,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(AppImage.becreativeimage),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.40,
                                height:
                                    MediaQuery.of(context).size.height * 0.40,
                                //width: MediaQuery.of(context).size.width * 0.30,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: AppString.b,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                        /*defining default style is optional */
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: AppString.creative,
                                              style: TextStyle(
                                                  fontSize: 29,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      Colors.lightBlue[900])),
                                          TextSpan(
                                              text: AppString.inyourway,
                                              style: TextStyle(
                                                  height: 1.0,
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      AppString.hereweproduce,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 17),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Stack(children: [
                          Container(
                            height: 400,
                            color: const Color.fromRGBO(7, 99, 198, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          AppString.downloadproduce,
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppImage.googleimageslogo,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02,
                                        ),
                                        Image.asset(
                                          AppImage.appleimageslogo,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .198,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      AppImage.imagestransfer,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Image.asset(AppImage.imagesstack1),
                          ),
                          Positioned(
                              top: 250,
                              left: 1300,
                              child: Container(
                                  child: Image.asset(AppImage.imagesstack2)))
                        ]),
                      )
                    ],
                  ),
                  Stack(
                    children: [],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 600,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(AppImage.makefriend),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.40,
                                height:
                                    MediaQuery.of(context).size.height * 0.40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: AppString.make,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                        /*defining default style is optional */
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: AppString.friends,
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: AppString.bybuilding,
                                              style: TextStyle(
                                                  height: 1,
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      AppString.thebestdomain,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 17),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 320,
                          color: Color.fromRGBO(7, 99, 198, 1),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    //width: 500,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height: 270,
                                    color: Color.fromRGBO(7, 99, 198, 1),

                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              AppImage.infoimage,
                                              width: 150,
                                            ),
                                            Text(
                                              AppString.notanormal,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              AppString.services,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                    AppImage.facebookimages),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    AppImage.linkedimages),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    AppImage.instagramimages)
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03),
                                        Column(
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 25,
                                            ),
                                            Text(
                                              AppString.features,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 24),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              AppString.viewweeds,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              AppString.makeconnection,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              AppString.createcompanies,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              AppString.mobileapp,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Container(
                                    //width: 200,
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 270,
                                    color: Color.fromRGBO(7, 99, 198, 1),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 80.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppString.links,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 24),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            AppString.privacy,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            AppString.terms,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Container(
                                    //width: 200,
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 270,
                                    color: Color.fromRGBO(7, 99, 198, 1),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 80.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppString.company,
                                            //stringName.company,,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 24),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            AppString.aboutus,
                                            // stringName.about,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            AppString.contactus,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                          //Text("Terms & Conditions"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Container(
                                    //width: 200,
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 270,
                                    color: Color.fromRGBO(7, 99, 198, 1),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 80.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            AppString.helpandsupport,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 24),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            AppString.gettingstarted,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          //Text("Terms & Conditions"),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 0.5,
                                width: MediaQuery.of(context).size.width * 0.8,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        AppString.copyright,
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        AppString.allrightreserved,
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              // Positioned(left: 280, top: 3400, child: bottom()),
            ],
          ),
        ));
  }
}
