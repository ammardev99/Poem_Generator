import 'package:flutter/widgets.dart';

class LoginState {
  TextEditingController? emailController;
  TextEditingController? passwordController;

  LoginState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
}
