
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/models/category_model.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

Widget customCategoryCard(Category category) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.primaryColor03),
      borderRadius: BorderRadius.circular(8),
    ),
    child: InkWell(
      onTap: () {
        Get.toNamed(RouteName.categoryFeedScreen);
        // Get.to(CategoryFeed(name: category.type));
      },
      borderRadius: BorderRadius.circular(8),
      hoverColor: AppColors.whiteColor,
      splashColor: AppColors.primaryColor03,
      child: Row(
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child:
                Center(child: customHeading(category.type, AppColors.whiteColor)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: SizedBox(height: 30, child: customHeading(category.title)),
              // ignore: unnecessary_null_comparison
              subtitle: category.count != 0
                  ? customInfo("Poems ${category.count}")
                  : customInfo("Poems"),
            ),
          ),
        ],
      ),
    ),
  );
}