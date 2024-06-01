import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/models/category_model.dart';
import 'package:poem_generator/utils/color.dart';

import 'logic.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({Key? key}) : super(key: key);

  final logic = Get.put(CategoriesLogic());
  final state = Get.find<CategoriesLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: myHeading("All Poems", AppColors.whiteColor),
          backgroundColor: AppColors.primaryColor,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: categoriesList.length,
                    itemBuilder: (context, index) {
                      return poemCategory(categoriesList[index]);
                    },
                  ),
                ),
              ],
            )),
            );
  }
}
