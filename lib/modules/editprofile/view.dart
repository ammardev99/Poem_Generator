import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class EditprofilePage extends StatelessWidget {
  EditprofilePage({Key? key}) : super(key: key);

  final logic = Get.put(EditprofileLogic());
  final state = Get.find<EditprofileLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
