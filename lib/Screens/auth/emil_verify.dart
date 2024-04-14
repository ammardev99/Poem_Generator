import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

import 'otp.dart';
import 'signup.dart';

class EmailVerify extends StatelessWidget {
  const EmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40), // Use SizedBox for consistent spacing
              Image.asset("images/logo.png"),
              const SizedBox(height: 10), // Use SizedBox for consistent spacing
              myTitle("Forgot Password", secondaryColor),
              info("Enter email to varify your account"),
              const SizedBox(height: 20),
              // enter email
              TextField(
                decoration: inputStyle(Icons.email, 'Email'),
              ),
              const SizedBox(height: 20),
              moveButtom("Verify", context, const OTP(), 'm'),
              // enter password
              sizeBox(10),
              infoAction(
                "Don't have an account?",
                "Sign up",
                const Signup(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
