import 'package:flutter/material.dart';
import 'package:poem_generator/Screens/ineer%20screens/help.dart';
import 'package:poem_generator/Screens/onboarding/onboarding.dart';
import 'package:poem_generator/components/widgets.dart';

import 'ineer screens/aboutus.dart';
import 'ineer screens/contactus.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          body: ListView(
        children: [
          userProfile("User Name", 'useremail@gmail.com', 'images/author.png'),
          menuOption(Icons.person,'Profile Setting',context,),
          menuOption(Icons.generating_tokens_outlined,'Genrate Poem',context,),
          menuOption(Icons.star_border,'Rate App',context,),
          menuOption(Icons.share,'Share This App',context,),
          menuOption(Icons.devices_other,'Other Apps',context,),
          menuOption(Icons.help_outline,'Help',context,const Help()),
          menuOption(Icons.info_outline,'About us',context,const AboutUs()),
          menuOption(Icons.support_agent,'Contact us',context,const ContactUs()),
          menuOption(Icons.logout, 'Log out', context, const OnBoarding()),
        ],
      )),
    );
  }
}
