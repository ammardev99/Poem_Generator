import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: whiteColor,
          ),
          title: myHeading("About Us", whiteColor),
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
                myTitle(
                  "Welcome to Poem  Generator",
                  secondaryColor,
                ),
                myHeading(
                    "where poetry meets innovation. We are passionate creators dedicated to revolutionizing the world of poetry through the power of artificial intelligence."),
                sizeBox(5),
                Divider(
                  color: primaryColor03,
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
                      child: myHeading("More Apps", whiteColor),
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
      myTitle(
        title,
        secondaryColor,
      ),
      info(text),
      sizeBox(5),
      Divider(
        color: primaryColor03,
      ),
    ],
  );
}