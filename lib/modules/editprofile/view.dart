import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

import 'logic.dart';

// ignore: must_be_immutable
class EditprofilePage extends StatelessWidget {
  EditprofilePage({Key? key}) : super(key: key);

  final logic = Get.put(EditprofileLogic());
  final state = Get.find<EditprofileLogic>().state;
  String gender = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(
              color: AppColors.whiteColor,
            ),
            backgroundColor: AppColors.primaryColor,
            centerTitle: true,
            title: customHeading("Edit Profile", AppColors.whiteColor),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profileImage(context),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customHeading('User Name'),
                      sizeBox(5),
                      TextField(decoration: editProfileInputStyle("Full Name")),
                      sizeBox(15),
                      customHeading('Email'),
                      sizeBox(5),
                      TextField(
                          decoration: editProfileInputStyle("email@gmail.com")),
                      sizeBox(15),
                      customHeading('Contact'),
                      sizeBox(5),
                      TextField(
                          decoration: editProfileInputStyle("Phone Number")),
                      sizeBox(15),
                      customHeading('Age'),
                      sizeBox(5),
                      TextField(decoration: editProfileInputStyle("Years")),
                      sizeBox(15),
                      selectLength(),
                      sizeBox(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  const WidgetStatePropertyAll(AppColors.primaryColor),
                              padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width / 3,
                                      vertical: 15)),
                            ),
                            child: customHeading("Update", AppColors.whiteColor),
                          ),
                        ],
                      ),
                      sizeBox(20),
                    ],
                  ),
                ),
              sizeBox(40)
              ],
      
            ),
          )),
    );
  }

  Stack profileImage(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: AppColors.primaryColor,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
            ),

          ],
        ),
        Positioned(
          bottom: 0,
          left: (MediaQuery.of(context).size.width / 2) - 60,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: AppColors.primaryColor03),
                    borderRadius: BorderRadius.circular(100)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/png/author.png'),
                  maxRadius: 60,
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.camera_alt_rounded, color: AppColors.primaryColor)))
            ],
          ),
        )
      ],
    );
  }

  Row selectLength() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        customHeading("Gender:", AppColors.secondaryColor),
        Radio(
          activeColor: AppColors.primaryColor,
          splashRadius: 0,
          value: "Male",
          groupValue: gender,
          onChanged: (value) {
            // setState(() {
            //   gender = value!;
            // });
          },
        ),
        const Text('Male'),
        Radio(
          activeColor: AppColors.primaryColor,
          splashRadius: 0,
          value: "Female",
          groupValue: gender,
          onChanged: (value) {
            // setState(() {
            //   gender = value!;
            // });
          },
        ),
        const Text('Female'),
        Radio(
          activeColor: AppColors.primaryColor,
          splashRadius: 0,
          value: "Other",
          groupValue: gender,
          onChanged: (value) {
            // setState(() {
            //   gender = value!;
            // });
          },
        ),
        const Text('Other'),
      ],
    );
  }
}