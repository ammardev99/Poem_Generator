import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_style.dart';

import 'logic.dart';

class ContactUsPage extends StatelessWidget {
  ContactUsPage({super.key});

  final logic = Get.put(ContactUsLogic());
  final state = Get.find<ContactUsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: AppColors.whiteColor,
          ),
          title: customHeading("Contact Us", AppColors.whiteColor),
          centerTitle: true,
          backgroundColor: AppColors.primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizeBox(20),
                customHeading('Name'),
                sizeBox(5),
                TextField(decoration: editProfileInputStyle("Enter Full Name")),
                sizeBox(15),
                customHeading('Email'),
                sizeBox(5),
                TextField(decoration: editProfileInputStyle("email@gmail.com")),
                sizeBox(15),
                customHeading('Your Message'),
                sizeBox(5),
                TextField(
                  decoration: editProfileInputStyle("Enter your message here"),
                  maxLines: 5,
                ),
                sizeBox(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: nextButtonStyle(context),
                      child:
                          customHeading("Send a message", AppColors.whiteColor),
                    ),
                  ],
                ),
                sizeBox(15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
