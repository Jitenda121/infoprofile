import 'package:flutter/material.dart';
class CustomSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  const CustomSizedBox({Key? key, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.02,
      width: width ?? MediaQuery.of(context).size.width * 0.02,
    );
  }
}
