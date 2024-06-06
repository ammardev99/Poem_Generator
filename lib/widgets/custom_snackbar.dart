import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackBar(
  String title,
  String subTitle,
  // bool? showProgressIndicator,
) {
  Get.snackbar(title, subTitle,
      // showProgressIndicator: showProgressIndicator!,
      colorText: Colors.black,
      backgroundColor: Colors.grey.shade200);
}