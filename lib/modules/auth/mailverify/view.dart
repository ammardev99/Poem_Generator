import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/modules/auth/opt/view.dart';
import 'package:poem_generator/modules/auth/signup/view.dart';
import 'package:poem_generator/utils/color.dart';

import 'logic.dart';

class MailverifyPage extends StatelessWidget {
  MailverifyPage({Key? key}) : super(key: key);

  final logic = Get.put(MailverifyLogic());
  final state = Get.find<MailverifyLogic>().state;

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
                child: SvgPicture.asset('assets/svg/logoPoemGenerator.svg')),
              sizeBox(40),
                myTitle("Forgot Password", AppColors.secondaryColor),
                info("Enter email to varify your account"),
                const SizedBox(height: 20),
                // enter email
                TextField(
                  decoration: inputStyle(Icons.email, 'Email'),
                ),
                const SizedBox(height: 20),
                moveButtom("Verify", context, OptPage(), 'm'),
                // enter password
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
}
