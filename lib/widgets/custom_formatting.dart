
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/utils/color.dart';

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget customTitle(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.blackColor,
    ),
    textAlign: TextAlign.center,
  );
}

Widget customHeading(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.blackColor,
    ),
  );
}

Widget customInfo(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.borderColor,
    ),
    textAlign: TextAlign.justify,
  );
}

Widget customInfoAction(
  String text,
  String label,
  page,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customInfo(text),
      sizeBox(5),
      TextButton(
          onPressed: () {
            if (page != null) {
              Get.toNamed(page);
            }
          },
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            padding: WidgetStateProperty.all(EdgeInsets.zero),
          ),
          child: customInfo(label, AppColors.primaryColor))
    ],
  );
}



