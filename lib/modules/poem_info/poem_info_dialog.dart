import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/models/poem_model.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

poemInfoDialog(context, PoemPost? post) {
  return Get.defaultDialog(
      title: 'Poem Generator App',
      titleStyle: const TextStyle(
          color: AppColors.primaryColor, fontWeight: FontWeight.bold),
      backgroundColor: Colors.transparent,
      content: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: AppColors.borderColor.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              border: Border.all(width: 2, color: AppColors.primaryColor03),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              // author info
              Column(
                children: [
                  sizeBox(10),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border:
                          Border.all(width: 2, color: AppColors.primaryColor03),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: post == null
                          ? const AssetImage('assets/png/author.png')
                          : AssetImage(post.authorImg),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      post == null
                          ? customHeading("Fillip Name", AppColors.secondaryColor)
                          : customHeading(
                              post.authorName, AppColors.secondaryColor),
                      const Spacer(),
                      const Icon(Icons.access_time_outlined, size: 15),
                      sizeBox(4),
                      post == null ? customInfo("2h") : customInfo(post.time),
                    ],
                  ),
                ],
              ),

              sizeBox(10),
              // poem text
              post == null
                  ? const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate.",
                      textAlign: TextAlign.justify,
                    )
                  : Text(
                      post.poem,
                      textAlign: TextAlign.justify,
                    ),
              sizeBox(10),
              Divider(
                color: AppColors.primaryColor03,
                indent: 1,
                endIndent: 1,
              ),
              sizeBox(5),
              // action options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconWithLabel(Icons.thumb_up_alt_outlined, ""),
                  iconWithLabel(Icons.favorite_border, ""),
                  iconWithLabel(Icons.share, ""),
                ],
              ),
            ],
          ),
        ),
      ));
}
