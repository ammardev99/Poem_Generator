


import 'package:flutter/material.dart';
import 'package:poem_generator/models/poem_model.dart';
import 'package:poem_generator/modules/poem_info/poem_info_dialog.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

Widget customPoemPost(BuildContext context, PoemPost post) {
  return InkWell(
    splashColor: AppColors.primaryColor03,
    hoverColor: Colors.transparent,
    onTap: () {
      poemInfoDialog(context, post);
      // Get.to( PoemInfoPage());
    },
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
          ListTile(
            contentPadding: const EdgeInsets.all(3),
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.primaryColor03),
                  borderRadius: BorderRadius.circular(100)),
              child: CircleAvatar(
                backgroundImage: AssetImage(post.authorImg),
              ),
            ),
            title: customHeading(post.authorName, AppColors.secondaryColor),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.access_time_outlined, size: 15),
                sizeBox(4),
                customInfo(post.time),
              ],
            ),
          ),
          sizeBox(10),
          // poem text
          Text(
            "${post.poem}Read more...",
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
              iconWithLabel(Icons.thumb_up_alt_outlined, "Like"),
              iconWithLabel(Icons.favorite_border, "Favorite"),
              iconWithLabel(Icons.share, "Share"),
            ],
          ),
        ],
      ),
    ),
  );
}



