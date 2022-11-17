import 'package:flutter/material.dart';

const titleBlueColor = Color(0xFF2d2d4f);

const mainTitleStyle =
    TextStyle(color: Color(0xFF2d2d4f), fontWeight: FontWeight.bold);

ButtonStyle blackColor =
    ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.black));

ButtonStyle greenColor =
    ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.green));

const whiteColorTextStyle = TextStyle(color: Colors.white);

TextStyle style({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    color: color,
    fontWeight: fontWeight,
  );
}
