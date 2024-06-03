import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/models/category_model.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

Widget poemOfTheDay(Category category) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.primaryColor03),
      borderRadius: BorderRadius.circular(8),
    ),
    child: InkWell(
      onTap: () {
        Get.toNamed(RouteName.poemInfoScreen);
      },
      borderRadius: BorderRadius.circular(8),
      hoverColor: AppColors.whiteColor,
      splashColor: AppColors.primaryColor03,
      child: Stack(
        children: [
// main card
          Row(
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
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/poem_image.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: SizedBox(
                    height: 30,
                    child:
                        customHeading(category.title, AppColors.primaryColor)),
                subtitle: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: ' Author: ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.borderColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
// over layer Fav and likes
          Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: AppColors.borderColor,
                  ))),

          Positioned(
              right: 5,
              bottom: 5,
              child: Row(
                children: [
                  const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: AppColors.borderColor,
                    size: 15,
                  ),
                  sizeBox(5),
                  customInfo('1214 likes')
                ],
              )),
        ],
      ),
// end over layer
    ),
  );
}
