import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/assets.dart';

Widget myTitle(String text, [Color? color]) {
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

Widget myHeading(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
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

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget moveButtom(String text, context, page, String action) {
  return ElevatedButton(
    onPressed: () {
      if (page != null) {
        action == 'r' ? Get.offAll(page) : Get.to(page);
      }
    },
    style: buttonstyle(),
    child: Text(text),
  );
}

Widget infoAction(
  String text,
  String label,
  page,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      info(text),
      sizeBox(5),
      TextButton(
          onPressed: () {
            if (page != null) {
              Get.to(page);
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
          ),
          child: info(label, primaryColor))
    ],
  );
}
