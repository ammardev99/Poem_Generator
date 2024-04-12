import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';

Widget title(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? blackColor,
    ),
    textAlign: TextAlign.center,
  );
}

Widget info(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? borderColor,
    ),
    textAlign: TextAlign.center,
  );
}


Widget sizeBox(double w, [double? h]){
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}


