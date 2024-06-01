import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/modules/auth/mailverify/view.dart';
import 'package:poem_generator/modules/auth/signup/view.dart';
import 'package:poem_generator/modules/poem_app.dart';
import 'package:poem_generator/utils/color.dart';

import 'logic.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;
  bool showPassword = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              sizeBox(10),
              SizedBox(
                height: 80,
                child: SvgPicture.asset('assets/svg/logoPoemGenerator.svg')),
              sizeBox(40),

                const SizedBox(height: 10),
                myTitle("Login", AppColors.secondaryColor),
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
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                      color: AppColors.primaryColor,
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(color: AppColors.borderColor),
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
                        color: AppColors.borderColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                        color: AppColors.borderColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
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
                moveButtom("Sign in", context, const PoemApp(), 'r'),
                sizeBox(10),
                GestureDetector(
                    onTap: () {
                      Get.to( MailverifyPage());
                    },
                    child: myHeading("Forgot the password?", AppColors.secondaryColor)),
                sizeBox(10),
                infoAction(
                  "Don't have an account?",
                  "Sign up",
                  SignupPage(),
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
            activeColor: AppColors.primaryColor,
            splashRadius: 0,
            side: const BorderSide(
              color: AppColors.primaryColor,
              width: 2,
            ),
          ),
          myHeading("Remember me"),
        ],
      ),
    );
  }
}
