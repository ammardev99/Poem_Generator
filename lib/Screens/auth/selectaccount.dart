import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/Screens/home.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

import 'login.dart';
import 'signup.dart';

class SelectAccount extends StatelessWidget {
  const SelectAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sizeBox(10),
            Image.asset("images/logo.png"),
            sizeBox(10),
            myTitle("Let's you in"),
            sizeBox(20),
            guestOption("Start as a Guest", const Home()),
            sizeBox(20),
            startOption(
              "Continue with Facebook",
              Icons.facebook,
            ),
            sizeBox(20),
            startOption(
              "Continue with Google",
              Icons.g_mobiledata,
            ),
            sizeBox(20),
            startOption(
              "Continue with Apple",
              Icons.apple,
            ),
            const Spacer(),
            moveButtom(
              "Sign in",
              context,
              const Login(),"m",
            ),
            infoAction("Don't have an  account?", "Sign up", const Signup(),)
          ],
        ),
      ),
    );
  }
  Widget guestOption(String text, page) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        Get.offAll(page);
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: primaryColor)),
        child: Center(child: myHeading(text, primaryColor)),
      ),
    );
  }

  Widget startOption(String label, [IconData? icon]) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: borderColor)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon,color: borderColor,), sizeBox(10), myHeading(label, borderColor)],
        ),
      ),
    );
  }
}
