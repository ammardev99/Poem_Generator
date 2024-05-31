import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class OptPage extends StatelessWidget {
  OptPage({Key? key}) : super(key: key);

  final logic = Get.put(OptLogic());
  final state = Get.find<OptLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
