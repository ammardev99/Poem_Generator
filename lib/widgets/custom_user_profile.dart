

// user info for menu
import 'package:flutter/material.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

Widget customUserProfile(
  String name,
  String email,
  String img,
) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    width: double.infinity,
    height: 190,
    decoration: const BoxDecoration(color: AppColors.primaryColor),
    child: Center(
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.whiteColor, width: 1),
            borderRadius: BorderRadius.circular(100),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              img,
            ),
          ),
        ),
        title: customHeading(name, AppColors.whiteColor),
        subtitle: customInfo(email, AppColors.whiteColor),
        // trailing: IconButton(
        //   onPressed: () {
        //     Get.to( EditprofilePage());
        //   },
        //   icon: const Icon(
        //     Icons.edit,
        //     color: AppColors.whiteColor,
        //   ),
        // )
      ),
    ),
  );
}
