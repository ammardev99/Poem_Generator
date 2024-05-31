import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({Key? key}) : super(key: key);

  final logic = Get.put(CategoriesLogic());
  final state = Get.find<CategoriesLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
