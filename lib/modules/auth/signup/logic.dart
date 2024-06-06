import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:poem_generator/modules/auth/login/view.dart';
import 'package:poem_generator/widgets/custom_snackbar.dart';

import 'state.dart';

class SignUpLogic extends GetxController {
  final SignupState state = SignupState();
  bool dataloading = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;
  void signup() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    dataloading = true;
    update();
    auth
        .createUserWithEmailAndPassword(
            email: state.emailController!.text.toString(),
            password: state.passwordController!.text.toString())
        .then((value) {
      dataloading = false;
      showSnackBar('Message', 'Account Create Successful!');
      Get.offAll(() => LoginPage());
      update();
    }).onError((error, stackTrace) {
      showSnackBar('Message', 'Server Error');
      log(error.toString());
      dataloading = false;
      update();
    });
  }
}
