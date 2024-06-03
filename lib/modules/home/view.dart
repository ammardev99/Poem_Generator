import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/models/poem_model.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_poem_post.dart';
import 'package:poem_generator/widgets/custom_welcome_profile.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                sizeBox(40),
                customWelcomeProfile(),
                sizeBox(10),
                searchBar(),
                sizeBox(10),
                // myHeading("Poem of the day"),
                // poemOfTheDay(categoriesList[1]),
                sizeBox(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customHeading("Categories"),
                    // GestureDetector(onTap: () {}, child: info("See all"))
                  ],
                ),
                sizeBox(10),
              ],
            ),
          ),
          categoriesButtons(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                sizeBox(15),
                for (var i = 0; i < poemPostList.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: customPoemPost(context, poemPostList[i]),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container searchBar() {
    return Container(
      decoration:
          searchDecoration(AppColors.whiteColor, AppColors.primaryColor03),
      child: TextField(
        decoration: searchStyle("Search ...", AppColors.primaryColor,
            AppColors.primaryColor03, Icons.search),
        cursorColor: AppColors.primaryColor,
        style: const TextStyle(color: AppColors.secondaryColor),
        enableSuggestions: true,
      ),
    );
  }
}


