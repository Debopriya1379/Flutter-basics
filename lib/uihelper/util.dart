
import 'package:flutter/material.dart';

TextStyle mTextStyle() {
  return const TextStyle(
    color: Colors.blue,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}

TextStyle mTextStyle2({Color textColor = Colors.grey, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
    color: textColor,
    fontWeight: fontWeight,
    fontSize: 24,
  );
}