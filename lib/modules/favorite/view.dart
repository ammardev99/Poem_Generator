import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'logic.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

  final logic = Get.put(FavoriteLogic());
  final state = Get.find<FavoriteLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: customHeading("Favorite Poems", AppColors.whiteColor),
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
