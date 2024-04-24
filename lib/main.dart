import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:poem_generator/Screens/onboarding/onboarding.dart';
import 'package:poem_generator/components/assets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    statusBarColor: primaryColor, // Set your desired status bar color
    statusBarBrightness: Brightness.light, // Set status bar text brightness (light or dark)
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
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const OnBoarding(),
    );
  }
}




