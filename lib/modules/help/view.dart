import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HelpPage extends StatelessWidget {
  HelpPage({Key? key}) : super(key: key);

  final logic = Get.put(HelpLogic());
  final state = Get.find<HelpLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
