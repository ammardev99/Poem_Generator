import 'package:flutter/material.dart';
import 'package:poem_generator/Screens/onboarding/onboarding.dart';
import 'package:poem_generator/components/widgets.dart';

import '../components/notfound.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        userProfile("User Name", 'useremail@gmail.com', 'images/logo.png'),
        menuOption(Icons.person,'Profile Setting',context,),
        menuOption(Icons.generating_tokens_outlined,'Genrate Poem',context,const NotFound()),
        menuOption(Icons.star_border,'Rate App',context,const NotFound()),
        menuOption(Icons.share,'Share This App',context,const NotFound()),
        menuOption(Icons.devices_other,'Other Apps',context,const NotFound()),
        menuOption(Icons.help_outline,'Help',context,const NotFound()),
        menuOption(Icons.info_outline,'About us',context,const NotFound()),
        menuOption(Icons.support_agent,'Contact us',context,const NotFound()),
        menuOption(Icons.logout, 'Log out', context, const OnBoarding()),
      ],
    ));
  }
}
