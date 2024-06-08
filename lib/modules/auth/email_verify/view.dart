import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_style.dart';

import 'logic.dart';

class EmailVerifyPage extends StatelessWidget {
  EmailVerifyPage({super.key});

  final logic = Get.put(EmailVerifyLogic());
  final state = Get.find<EmailVerifyLogic>().state;

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
                sizeBox(80),
                SizedBox(
                    height: 80,
                    child:
                        SvgPicture.asset('assets/svg/logoPoemGenerator.svg')),
                sizeBox(40),
                customTitle("Forgot Password", AppColors.secondaryColor),
                customInfo("Enter email to verify your account"),
                const SizedBox(height: 20),
                // enter email
                TextField(
                  decoration: inputStyle(Icons.email, 'Email'),
                ),
                const SizedBox(height: 20),
                customActionButton("Verify", context, RouteName.otpPage, 'm'),
                // enter password
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
    );
  }
}
