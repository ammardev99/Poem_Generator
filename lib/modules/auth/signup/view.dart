import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/modules/auth/selectaccount.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/modules/auth/login/view.dart';
import 'package:poem_generator/modules/poem_app.dart';

import 'logic.dart';

// ignore: must_be_immutable
class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final logic = Get.put(SignupLogic());
  final state = Get.find<SignupLogic>().state;
  bool showPassword = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Get.offAll(const SelectAccount());
            },
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Image.asset("assets/png/logo.png"),
                const SizedBox(height: 10), // Use SizedBox for consistent spacing
                myTitle("Create your Account", secondaryColor),
                const SizedBox(height: 20),
                // enter full name
                TextField(
                  decoration: inputStyle(Icons.person, 'Full Name'),
                ),
                const SizedBox(height: 20),
                // enter email
                TextField(
                  decoration: inputStyle(Icons.email, 'Email'),
                ),
                const SizedBox(height: 20),
                // enter password
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20,
                      color: primaryColor,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: borderColor),
                    suffixIcon: IconButton(
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        // setState(() {
                        //   showPassword = !showPassword;
                        // });
                      },
                      icon: Icon(
                        showPassword == true
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: borderColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                        color: borderColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                  obscureText:
                      showPassword, // Password visibility based on showPassword
                ),
                const SizedBox(height: 10),
                // remember password
                rememberPassword(),
                const SizedBox(height: 40),
                moveButtom("Sign up", context, const PoemApp(), 'r'),
                sizeBox(10),
                infoAction(
                  "Do you have an account?",
                  "Sign in",
                  LoginPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector rememberPassword() {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   rememberMe = !rememberMe;
        // });
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: rememberMe,
            onChanged: (value) {
              // setState(() {
              //   rememberMe = value!;
              // });
            },
            activeColor: primaryColor,
            splashRadius: 0,
            side: BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),
          myHeading("Remember me"),
        ],
      ),
    );
  }
}
