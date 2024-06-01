import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/utils/color.dart';

import 'logic.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);

  final logic = Get.put(FavoriteLogic());
  final state = Get.find<FavoriteLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: myHeading("Favorite Poems", AppColors.whiteColor),
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
