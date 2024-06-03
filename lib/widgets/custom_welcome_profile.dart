

import 'package:flutter/material.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

Widget customWelcomeProfile() {
  return ListTile(
    title: customHeading("Hi, Noman"),
    subtitle: customInfo("Looking for specific poem?", AppColors.secondaryColor),
    trailing: Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/png/author.png',
        ),
      ),
    ),
  );
}
