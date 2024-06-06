import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/utils/constant.dart';
import 'package:poem_generator/widgets/custom_apploading.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_style.dart';

import 'logic.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;
  bool showPassword = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return AppLoadingWidget(
      inAsyncCall: logic.dataloading,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: logic.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    sizeBox(10),
                    SizedBox(
                        height: 80,
                        child: SvgPicture.asset(
                            'assets/svg/logoPoemGenerator.svg')),
                    sizeBox(40),

                    const SizedBox(height: 10),
                    customTitle("Login", AppColors.secondaryColor),
                    const SizedBox(height: 20),
                    // enter email
                    TextFormField(
                        controller: state.emailController,
                        decoration: inputStyle(Icons.email, 'Email'),
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return ErrorStrings.emailReq;
                          } else if (!GetUtils.isEmail(value!)) {
                            return ErrorStrings.emailInvalid;
                          }
                          return null;
                        }),
                    const SizedBox(height: 20),
                    // enter password
                    TextFormField(
                      controller: state.passwordController,
                      validator: (value) {
                        if ((value ?? "").isEmpty) {
                          return ErrorStrings.passwordReq;
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 20,
                          color: AppColors.primaryColor,
                        ),
                        hintText: "Password",
                        hintStyle:
                            const TextStyle(color: AppColors.borderColor),
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
                    ElevatedButton(
                      onPressed: () {
                        logic.login();
                        logic.update();
                      },
                      style: buttonStyle(),
                      child: const Text('Login'),
                    ),

                    // customActionButton(
                    //     "Sign in", context, RouteName.poemApp, 'r'),
                    // sizeBox(10),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteName.emailVerifyPage);
                        },
                        child: customHeading(
                            "Forgot the password?", AppColors.secondaryColor)),
                    sizeBox(10),
                    customInfoAction(
                      "Don't have an account?",
                      "Sign up",
                      RouteName.signUpPage,
                    ),
                  ],
                ),
              ),
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
