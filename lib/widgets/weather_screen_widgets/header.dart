import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class buildHeaderText extends StatelessWidget {
  buildHeaderText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.fontWeight = FontWeight.normal});
  final String text;
  final double fontSize;
  FontWeight fontWeight = FontWeight.normal;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: fontWeight,
      ),
    );
  }
}
