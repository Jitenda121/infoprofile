import 'package:flutter/material.dart';
import 'package:flutter_application_1/layoutbuilder.dart';
import 'package:flutter_application_1/view/desktop_view.dart';
import 'package:flutter_application_1/view/mobile_view.dart';
import 'package:flutter_application_1/view/tablet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayOut(
        mobileView: MobileView(),
        tabletView: TabletBiew(),
        desktopView: DesktopView(),
      ),
    );
  }
}
