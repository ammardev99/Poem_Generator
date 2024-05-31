import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class AboutusPage extends StatelessWidget {
  AboutusPage({Key? key}) : super(key: key);

  final logic = Get.put(AboutusLogic());
  final state = Get.find<AboutusLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}