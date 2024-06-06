import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:poem_generator/utils/color.dart';

// ignore: must_be_immutable
class AppLoadingWidget extends StatelessWidget {
  bool inAsyncCall;
  Widget child;
  AppLoadingWidget({super.key, required this.child, required this.inAsyncCall});

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      opacity: 0.2,
      inAsyncCall: inAsyncCall,
      progressIndicator: Platform.isAndroid
          ? const CircularProgressIndicator(
              color: AppColors.primaryColor
            )
          : const CupertinoActivityIndicator(
              color: AppColors.primaryColor,
            ),
      child: child,
    );
  }
}