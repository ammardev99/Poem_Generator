import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';


class SelectAccount extends StatelessWidget {
  const SelectAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              sizeBox(10),
              SizedBox(
                height: 80,
                child: SvgPicture.asset('assets/svg/logoPoemGenerator.svg')),
              sizeBox(40),
              myTitle("Let's you in"),
              sizeBox(20),
              guestOption("Start as a Guest", RouteName.poemApp),
              sizeBox(20),
              startOption("Continue with Facebook",Icons.facebook,),
              sizeBox(20),
              startOption("Continue with Google",Icons.g_mobiledata,),
              sizeBox(20),
              startOption("Continue with Apple",Icons.apple,),
              sizeBox(40),
              moveButton("Sign in",context,RouteName.loginPage,"m",),
              infoAction("Don't have an  account?", "Sign up", RouteName.signUpPage,)
            ],
          ),
        ),
      ),
    );
  }

  Widget startOption(String label, [IconData? icon]) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: AppColors.borderColor)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon,color: AppColors.borderColor,), sizeBox(10), myHeading(label, AppColors.borderColor)],
        ),
      ),
    );
  }
}
