import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_style.dart';

import 'logic.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final logic = Get.put(SignUpLogic());
  final state = Get.find<SignUpLogic>().state;
  bool showPassword = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Get.offAllNamed(RouteName.selectAccountScreen);
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
              sizeBox(10),
              SizedBox(
                height: 80,
                child: SvgPicture.asset('assets/svg/logoPoemGenerator.svg')),
              sizeBox(40),
                customTitle("Create your Account", AppColors.secondaryColor),
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
                customActionButton("Sign up", context, RouteName.poemApp, 'r'),
                sizeBox(10),
                customInfoAction(
                  "Do you have an account?",
                  "Sign in",
                  RouteName.loginPage,
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
          customHeading("Remember me"),
        ],
      ),
    );
  }
}
