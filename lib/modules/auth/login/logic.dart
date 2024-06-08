import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/modules/poem_app.dart';
import 'package:poem_generator/widgets/custom_snackbar.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool dataloading = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;
  void login() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    dataloading = true;
    update();
    auth.signInWithEmailAndPassword(
            email: state.emailController!.text,
            password: state.passwordController!.text.toString())
        .then((value) {
      dataloading = false;
      showSnackBar('Welcome', 'Login Successful!');
      Get.offAll(() => const PoemApp());
      dataloading = false;
      update();
    }).onError((error, stackTrace) {
      showSnackBar('Error', 'email or password not match. please try again');
      log(error.toString());
      update();
      dataloading = false;
      update();
    });
  }
}

