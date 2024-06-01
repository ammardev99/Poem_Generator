import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/utils/color.dart';

import 'logic.dart';

class CategoryfeedPage extends StatelessWidget {
  CategoryfeedPage({Key? key}) : super(key: key);

  final logic = Get.put(CategoryfeedLogic());
  final state = Get.find<CategoryfeedLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(
              color: AppColors.whiteColor,
            ),
            // title: myHeading(name, whiteColor),
            backgroundColor: AppColors.primaryColor,
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
