import 'package:flutter/material.dart';
import 'package:poem_generator/Screens/auth/emil_verify.dart';
import 'package:poem_generator/Screens/home.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});
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
                Image.asset("images/logo.png"),
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
                moveButtom("Confirm", context, const Home(), 'r'),
                sizeBox(10),
                infoAction(
                  "Don't get code?",
                  "Resend Code",
                  const EmailVerify(),
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
              color: primaryColor,
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
