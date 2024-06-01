import 'package:flutter/material.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/utils/color.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/png/logo.png'),
          myTitle("Page Not Found", AppColors.primaryColor),
        ],
      ),
    );
  }
}
