import 'package:flutter/material.dart';
import 'package:poem_generator/Screens/ineer%20screens/help.dart';
import 'package:poem_generator/Screens/onboarding/onboarding.dart';
import 'package:poem_generator/components/widgets.dart';

import 'ineer screens/aboutus.dart';
import 'ineer screens/contactus.dart';
import 'ineer screens/profile_edit.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          userProfile("User Name", 'useremail@gmail.com', 'assets/png/author.png'),
          menuOption(Icons.person,'Profile Setting',context,const EditProfile()),
          menuOption(Icons.generating_tokens_outlined,'Genrate Poem',context,),
          menuOption(Icons.star_border,'Rate App',context,),
          shareOption(Icons.share,'Share This App','share',),
          redirectOption(Icons.devices_other,'Other Apps','https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US'),
          menuOption(Icons.help_outline,'Help',context,const Help()),
          menuOption(Icons.info_outline,'About us',context,const AboutUs()),
          menuOption(Icons.support_agent,'Contact us',context,const ContactUs()),
          menuOption(Icons.logout, 'Log out', context, const OnBoarding()),
        ],
      )),
    );
  }
}
