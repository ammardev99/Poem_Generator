import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

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
                sizeBox(80),
                SizedBox(
                    height: 80,
                    child:
                        SvgPicture.asset('assets/svg/logoPoemGenerator.svg')),
                sizeBox(40),
                customTitle("Enter OTP", AppColors.secondaryColor),
                customInfo("Enter your OTP code here to verify"),
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
                customActionButton("Confirm", context, RouteName.poemApp, 'r'),
                sizeBox(10),
                customInfoAction(
                  "Don't get code?",
                  "Resend Code",
                  RouteName.emailVerifyPage,
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
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {},
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
