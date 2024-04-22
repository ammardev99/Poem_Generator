import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: whiteColor,
          ),
          title: myHeading("Contact Us", whiteColor),
          centerTitle: true,
          backgroundColor: primaryColor,
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
                      child: myHeading("Send a message", whiteColor),
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
