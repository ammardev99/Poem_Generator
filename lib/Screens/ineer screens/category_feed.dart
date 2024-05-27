import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class CategoryFeed extends StatelessWidget {
  final String name;

  const CategoryFeed({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: whiteColor,
            ),
            title: myHeading(name, whiteColor),
            backgroundColor: primaryColor,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                sizeBox(20),
                poemPost(context),
                sizeBox(10),
                poemPost(context),
                sizeBox(10),
                poemPost(context),
                sizeBox(20),
              ],
            ),
          )),
    );
  }
}
