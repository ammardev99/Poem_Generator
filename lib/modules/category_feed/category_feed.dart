import 'package:flutter/material.dart';
import 'package:poem_generator/models/poem_model.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_poem_post.dart';

class CategoryFeed extends StatelessWidget {
  final String? name;

  const CategoryFeed({super.key, required this.name});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(
              color: AppColors.whiteColor,
            ),
            title: customHeading(name??"", AppColors.whiteColor),
            backgroundColor: AppColors.primaryColor,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                sizeBox(20),
          customPoemPost(context, poemPostList[0]),
                sizeBox(10),
          customPoemPost(context, poemPostList[1]),
                sizeBox(10),
          customPoemPost(context, poemPostList[2]),
                sizeBox(20),
              ],
            ),
          )),
    );
  }
}
