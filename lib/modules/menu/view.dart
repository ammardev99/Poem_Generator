import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_menu_option.dart';
import 'package:poem_generator/widgets/custom_user_profile.dart';

import 'logic.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  final logic = Get.put(MenuLogic());
  final state = Get.find<MenuLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        customUserProfile(
            "User Name", 'useremail@gmail.com', 'assets/png/author.png'),
        customMenuOption(Icons.person, 'Profile Setting', context,
            RouteName.editProfilePage),
        // menuOption(Icons.generating_tokens_outlined,'Generate Poem',context,),
        customRedirectOption(Icons.star_border, 'Rate App',
            'https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US'),
        // shareOption(Icons.share,'Share This App','share',),
        customRedirectOption(Icons.devices_other, 'Other Apps',
            'https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US'),
        customMenuOption(
            Icons.help_outline, 'Help', context, RouteName.helpPage),
        customMenuOption(
            Icons.info_outline, 'About us', context, RouteName.aboutUsPage),
        customMenuOption(Icons.support_agent, 'Contact us', context,
            RouteName.contactUsPage),
        // customMenuOption(Icons.logout, 'Log out', context, RouteName.selectAccountScreen),
        Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: AppColors.primaryColor03))),
          child: ListTile(
            hoverColor: AppColors.primaryColor03,
            splashColor: AppColors.primaryColor03,
            leading: const Icon(Icons.logout),
            iconColor: AppColors.primaryColor,
            title: customHeading('Log out', AppColors.secondaryColor),
            // trailing: Icon(
            //   Icons.chevron_right,
            //   color: page == null ? Colors.grey : primaryColor03,
            // ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: customHeading('Log out', AppColors.whiteColor),
                backgroundColor: AppColors.secondaryColor,
                duration: const Duration(milliseconds: 1000),
              ));
              Get.offAndToNamed(RouteName.loginPage);
            },
          ),
        )
      ],
    ));
  }
}
