import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MailverifyPage extends StatelessWidget {
  MailverifyPage({Key? key}) : super(key: key);

  final logic = Get.put(MailverifyLogic());
  final state = Get.find<MailverifyLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
