import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String gender = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: whiteColor,
            ),
            backgroundColor: primaryColor,
            centerTitle: true,
            title: myHeading("Edit Profile", whiteColor),
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
                      myHeading('User Name'),
                      sizeBox(5),
                      TextField(decoration: editProfileinputStyle("Full Name")),
                      sizeBox(15),
                      myHeading('Email'),
                      sizeBox(5),
                      TextField(
                          decoration: editProfileinputStyle("email@gmail.com")),
                      sizeBox(15),
                      myHeading('Contact'),
                      sizeBox(5),
                      TextField(
                          decoration: editProfileinputStyle("Phone Number")),
                      sizeBox(15),
                      myHeading('Age'),
                      sizeBox(5),
                      TextField(decoration: editProfileinputStyle("Years")),
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
                                  MaterialStatePropertyAll(primaryColor),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width / 3,
                                      vertical: 15)),
                            ),
                            child: myHeading("Update", whiteColor),
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
              color: primaryColor,
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
                    border: Border.all(width: 3, color: primaryColor03),
                    borderRadius: BorderRadius.circular(100)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/author.png'),
                  maxRadius: 60,
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.camera_alt_rounded, color: primaryColor)))
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
        myHeading("Gender:", secondaryColor),
        Radio(
          activeColor: primaryColor,
          splashRadius: 0,
          value: "Male",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text('Male'),
        Radio(
          activeColor: primaryColor,
          splashRadius: 0,
          value: "Female",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text('Female'),
        Radio(
          activeColor: primaryColor,
          splashRadius: 0,
          value: "Other",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text('Other'),
      ],
    );
  }
}