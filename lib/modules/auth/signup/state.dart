import 'package:flutter/widgets.dart';

class SignupState {
  TextEditingController? emailController;
    TextEditingController? passwordController;
     TextEditingController? nameController;

  SignupState() {
    ///Initialize variables
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }
}
