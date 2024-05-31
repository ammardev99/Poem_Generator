import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class GenratePage extends StatelessWidget {
  GenratePage({Key? key}) : super(key: key);

  final logic = Get.put(GenrateLogic());
  final state = Get.find<GenrateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
