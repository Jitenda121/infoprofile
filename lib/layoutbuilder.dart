import 'package:flutter/material.dart';

class LayOut extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  const LayOut(
      {super.key,
      required this.mobileView,
      required this.tabletView,
      required this.desktopView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      if (contraints.maxWidth < 600) {
        return mobileView;
      } else if (contraints.maxWidth < 800) {
        return tabletView;
      } else {
        return desktopView;
      }
    });
  }
}
