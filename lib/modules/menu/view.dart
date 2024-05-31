import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/Screens/ineer%20screens/contactus.dart';
import 'package:poem_generator/Screens/onboarding/onboarding.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/modules/aboutus/view.dart';
import 'package:poem_generator/modules/editprofile/view.dart';
import 'package:poem_generator/modules/help/view.dart';

import 'logic.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  final logic = Get.put(MenuLogic());
  final state = Get.find<MenuLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          userProfile("User Name", 'useremail@gmail.com', 'assets/png/author.png'),
          menuOption(Icons.person,'Profile Setting',context, EditprofilePage()),
          menuOption(Icons.generating_tokens_outlined,'Genrate Poem',context,),
          menuOption(Icons.star_border,'Rate App',context,),
          shareOption(Icons.share,'Share This App','share',),
          redirectOption(Icons.devices_other,'Other Apps','https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US'),
          menuOption(Icons.help_outline,'Help',context, HelpPage()),
          menuOption(Icons.info_outline,'About us',context, AboutusPage()),
          menuOption(Icons.support_agent,'Contact us',context,const ContactUs()),
          menuOption(Icons.logout, 'Log out', context, const OnBoarding()),
        ],
      )),
    );
  }
}
