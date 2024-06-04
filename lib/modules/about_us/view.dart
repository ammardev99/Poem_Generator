import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_style.dart';

import 'logic.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({Key? key}) : super(key: key);

  final logic = Get.put(AboutUsLogic());
  final state = Get.find<AboutUsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: AppColors.whiteColor,
          ),
          title: customHeading("About Us", AppColors.whiteColor),
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
                customTitle(
                  "Welcome to Poem  Generator",
                  AppColors.secondaryColor,
                ),
                customHeading(
                    "where poetry meets innovation. We are passionate creators dedicated to revolutionizing the world of poetry through the power of artificial intelligence."),
                sizeBox(5),
                Divider(
                  color: AppColors.primaryColor03,
                ),
                sizeBox(5),
                aboutCard("Our Mission",
                    'Our mission is to inspire creativity and facilitate self-expression through poetry. We believe that everyone has a unique voice waiting to be heard, and our AI-based Poem Generator empowers users to unleash their creativity without limitations.'),
                aboutCard("What We Do",
                    'Using cutting-edge natural language processing algorithms and machine learning techniques, we\'ve developed an intelligent Poem Generator that can craft original poetry in various styles and forms. Whether you\'re a seasoned poet seeking inspiration or a novice exploring the world of verse, our app provides a platform for endless creativity.'),
                aboutCard("Meet the Team",
                    'Behind Poem Generator is TheWebConcept. TheWebConcept is a team of dedicated individuals passionate about literature, technology, and creativity. We bring together expertise in AI, linguistics, and poetry to create an app that pushes the boundaries of what\'s possible.'),
                sizeBox(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: nextButtonStyle(context),
                      child: customHeading("More Apps", AppColors.whiteColor),
                    ),
                  ],
                ),
                sizeBox(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget aboutCard(String title, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizeBox(10),
      customTitle(
        title,
        AppColors.secondaryColor,
      ),
      customInfo(text),
      sizeBox(5),
      Divider(
        color: AppColors.primaryColor03,
      ),
    ],
  );
}
