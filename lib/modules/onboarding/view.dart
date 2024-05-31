import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final logic = Get.put(OnboardingLogic());
  final state = Get.find<OnboardingLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
