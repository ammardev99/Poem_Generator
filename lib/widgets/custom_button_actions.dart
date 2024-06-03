import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/models/category_model.dart';
import 'package:poem_generator/modules/category_feed/category_feed.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:share_it/share_it.dart';



Widget customActionButton(String text, context, page, String action) {
  return ElevatedButton(
    onPressed: () {
      if (page != null) {
        action == 'r' ? Get.offAndToNamed(page) : Get.toNamed(page);
      }
    },
    style: buttonStyle(),
    child: Text(text),
  );
}




Widget iconWithLabel(IconData icon, String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        splashColor: AppColors.primaryColor,
        hoverColor: Colors.transparent,
        onPressed: () {},
        icon: Icon(
          icon,
          color: AppColors.primaryColor,
        ),
      ),
      const SizedBox(width: 4),
      customInfo(label),
    ],
  );
}




Widget shareOption(IconData icon, String txt, String message) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor03))),
    child: ListTile(
      hoverColor: AppColors.primaryColor03,
      splashColor: AppColors.primaryColor03,
      leading: Icon(icon),
      iconColor: AppColors.primaryColor,
      title: customHeading(
        txt,
      ),
      onTap: () {
        ShareIt.text(content: 'message');
        // ignore: avoid_print
        print('share');
      },
    ),
  );
}

Widget guestOption(String text, page) {
  return InkWell(
    borderRadius: BorderRadius.circular(100),
    onTap: () {
      Get.offAndToNamed(page);
    },
    child: Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1, color: AppColors.primaryColor)),
      child: Center(child: customHeading(text, AppColors.primaryColor)),
    ),
  );
}




Widget categoriesButtons() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal, // Ensures horizontal scrolling
    physics: const BouncingScrollPhysics(
      decelerationRate: ScrollDecelerationRate.normal,
    ),
    child: Row(
      children: [
        sizeBox(15),
        for (var i = 0; i < categoriesList.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child:
                categoryButton(categoriesList[i].type, categoriesList[i].color),
          ),
      ],
    ),
  );
}

Widget categoryButton(String text, Color color) {
  return TextButton(
    onPressed: () {
      Get.to(CategoryFeed(name: text));
    },
    style: TextButton.styleFrom(
      foregroundColor: AppColors.whiteColor,
      backgroundColor: color.withOpacity(0.9),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    child: Text(text),
  );
}
