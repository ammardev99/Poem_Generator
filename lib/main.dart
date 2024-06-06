import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/firebase_options.dart';
import 'package:poem_generator/modules/onboarding/on_boarding_page.dart';
import 'package:poem_generator/routes/routes.dart';
import 'package:poem_generator/utils/color.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    statusBarBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      getPages: AppRoutes.appRoutes(),
      home: AnimatedSplashScreen(
          duration: 2000,

          // splashTransition: SplashTransition.fadeTransition,
          centered: true,
          splash: SvgPicture.asset(
            'assets/svg/logoPoemGenerator.svg',
            semanticsLabel: 'Poem Generator',
            height: 80,
          ),
          nextScreen: const OnBoardingPage()),
    );
  }
}
// end{code}



