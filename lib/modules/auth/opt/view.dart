import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/modules/auth/mailverify/view.dart';
import 'package:poem_generator/modules/poem_app.dart';

import 'logic.dart';

class OptPage extends StatelessWidget {
  OptPage({Key? key}) : super(key: key);

  final logic = Get.put(OptLogic());
  final state = Get.find<OptLogic>().state;

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
                const SizedBox(height: 40), 
                Image.asset("assets/png/logo.png"),
                const SizedBox(height: 10), 
                myTitle("Enter OTP", secondaryColor),
                info("Enter your OTP code here to varify"),
                const SizedBox(height: 20),
                // enter OTP
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    otpField(),
                    otpField(),
                    otpField(),
                    otpField(),
                  ],
                ),
                const SizedBox(height: 20),
                moveButtom("Confirm", context, const PoemApp(), 'r'),
                sizeBox(10),
                infoAction(
                  "Don't get code?",
                  "Resend Code",
                  MailverifyPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox otpField() {
    return SizedBox(
      width: 50,
      child: TextField(
        textAlign: TextAlign.center, // Center text input
        keyboardType: TextInputType.number, // Allow only numeric input
        maxLength: 1, // Limit input to single character

        onChanged: (value) {},
        decoration: InputDecoration(
          counterText: "", // Hide character counter
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color:primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
