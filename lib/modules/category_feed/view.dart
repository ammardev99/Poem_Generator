import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CategorizedPage extends StatelessWidget {
  CategorizedPage({super.key});

  final logic = Get.put(CategoryfeedLogic());
  final state = Get.find<CategoryfeedLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('CategoryfeedPage'),
        ),
      ),
    );
  }
}
