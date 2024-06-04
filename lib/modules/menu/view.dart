import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/widgets/custom_menu_option.dart';
import 'package:poem_generator/widgets/custom_user_profile.dart';

import 'logic.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  final logic = Get.put(MenuLogic());
  final state = Get.find<MenuLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        customUserProfile("User Name", 'useremail@gmail.com', 'assets/png/author.png'),
        customMenuOption(Icons.person,'Profile Setting',context, RouteName.editProfilePage),
        // menuOption(Icons.generating_tokens_outlined,'Generate Poem',context,),
        customRedirectOption(Icons.star_border,'Rate App','https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US'),
        // shareOption(Icons.share,'Share This App','share',),
        customRedirectOption(Icons.devices_other,'Other Apps','https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US'),
        customMenuOption(Icons.help_outline,'Help',context, RouteName.helpPage),
        customMenuOption(Icons.info_outline,'About us',context, RouteName.aboutUsPage),
        customMenuOption(Icons.support_agent,'Contact us',context, RouteName.contactUsPage),
        customMenuOption(Icons.logout, 'Log out', context, RouteName.selectAccountScreen),
      ],
    ));
  }
}
