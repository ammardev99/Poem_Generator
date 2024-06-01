import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/models/poem_model.dart';
import 'package:poem_generator/utils/color.dart';

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
                profileWelcom(),
                sizeBox(10),
                searchBar(),
                sizeBox(10),
                // myHeading("Poem of the day"),
                // poemOfTheDay(categoriesList[1]),
                sizeBox(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myHeading("Categories"),
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
                    child: poemPost(context, poemPostList[i]),
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
        autocorrect: true,
        enableSuggestions: true,
      ),
    );
  }
}


  // Container searchBar() {
  //   return Container(
  //     decoration: searchDecoration(whiteColor, primaryColor03),
  //     child: TextField(
  //       decoration: searchStyle(
  //           "Search ...", primaryColor, primaryColor03, Icons.search),
  //       cursorColor: primaryColor,
  //       style: TextStyle(color: secondaryColor),
  //       autocorrect: true,
  //       enableSuggestions: true,
  //     ),
  //   );
  // }