import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ContactusPage extends StatelessWidget {
  ContactusPage({Key? key}) : super(key: key);

  final logic = Get.put(ContactusLogic());
  final state = Get.find<ContactusLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
