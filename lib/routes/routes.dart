import 'package:get/get.dart';
import 'package:poem_generator/modules/about_us/view.dart';
import 'package:poem_generator/modules/auth/email_verify/view.dart';
import 'package:poem_generator/modules/auth/login/view.dart';
import 'package:poem_generator/modules/auth/opt/view.dart';
import 'package:poem_generator/modules/auth/select_account.dart';
import 'package:poem_generator/modules/auth/signUp/view.dart';
import 'package:poem_generator/modules/category_feed/category_feed.dart';
import 'package:poem_generator/modules/contact_us/view.dart';
import 'package:poem_generator/modules/editprofile/view.dart';
import 'package:poem_generator/modules/help/view.dart';
import 'package:poem_generator/modules/onboarding/view.dart';
import 'package:poem_generator/modules/poem_app.dart';
import 'package:poem_generator/modules/poem_info/view.dart';

import 'routes_name.dart';

class AppRoutes {

  static appRoutes() =>
      [
        GetPage(name: RouteName.onBoardingPage, page: () => OnboardingPage()),
        GetPage(name: RouteName.selectAccountScreen, page: () => const SelectAccount()),
        GetPage(name: RouteName.loginPage, page: () => LoginPage()),
        GetPage(name: RouteName.signUpPage, page: () => SignUpPage()),
        GetPage(name: RouteName.emailVerifyPage, page: ()=> EmailVerifyPage()),
        GetPage(name: RouteName.otpPage, page: () => OptPage()),

        GetPage(name: RouteName.poemApp, page: () => const PoemApp()),

        GetPage(name: RouteName.categoryFeedScreen, page: () => const CategoryFeed(name: '')),
        GetPage(name: RouteName.poemInfoScreen, page: () => PoemInfoPage()),

        GetPage(name: RouteName.editProfilePage, page: () => EditprofilePage()),
        GetPage(name: RouteName.aboutUsPage, page: () => AboutUsPage()),
        GetPage(name: RouteName.contactUsPage, page: () => ContactUsPage()),
        GetPage(name: RouteName.helpPage, page: () => HelpPage()),
        // GetPage(name: RouteName., page: () => ()),
      ];
}
