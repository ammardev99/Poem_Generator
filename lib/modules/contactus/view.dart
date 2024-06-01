import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/utils/color.dart';

import 'logic.dart';

class ContactusPage extends StatelessWidget {
  ContactusPage({Key? key}) : super(key: key);

  final logic = Get.put(ContactusLogic());
  final state = Get.find<ContactusLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: AppColors.whiteColor,
          ),
          title: myHeading("Contact Us", AppColors.whiteColor),
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
                myHeading('Name'),
                sizeBox(5),
                TextField(decoration: editProfileinputStyle("Enter Full Name")),
                sizeBox(15),
                myHeading('Email'),
                sizeBox(5),
                TextField(decoration: editProfileinputStyle("email@gmail.com")),
                sizeBox(15),
                myHeading('Your Message'),
                sizeBox(5),
                TextField(
                  decoration: editProfileinputStyle("Enter your message here"),
                  maxLines: 5,
                ),
                sizeBox(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: nextButtonStyle(context),
                      child: myHeading("Send a message", AppColors.whiteColor),
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
