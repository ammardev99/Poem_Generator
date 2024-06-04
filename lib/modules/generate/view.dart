import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:poem_generator/widgets/custom_style.dart';

import 'logic.dart';

// ignore: must_be_immutable
class GeneratePage extends StatelessWidget {
  GeneratePage({Key? key}) : super(key: key);

  final logic = Get.put(GenerateLogic());
  final state = Get.find<GenerateLogic>().state;
  String getLength = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // top option
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              color: AppColors.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizeBox(60),
                  customHeading("Poem Genrator", AppColors.whiteColor),
                  const SizedBox(
                    height: 10,
                  ),
                  getPromote("write something for poem"),
                  const SizedBox(
                    height: 10,
                  ),
                  customHeading("Length:", AppColors.whiteColor),
                  selectLength(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(AppColors.whiteColor),
                          padding: WidgetStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width / 3,
                                  vertical: 20)),
                        ),
                        child: customHeading("Generate", AppColors.secondaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            sizeBox(40),
            SvgPicture.asset('assets/svg/empty.svg'),
          ],
        ),
      ),
    );
  }

  Row selectLength() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          activeColor: AppColors.whiteColor,
          splashRadius: 0,
          value: "Regular",
          groupValue: getLength,
          onChanged: (value) {
            // setState(() {
            //   getlength = value!;
            // });
          },
        ),
        const Text('Regular'),
        Radio(
          activeColor: AppColors.whiteColor,
          splashRadius: 0,
          value: "Medium",
          groupValue: getLength,
          onChanged: (value) {
            // setState(() {
            //   getlength = value!;
            // });
          },
        ),
        const Text('Medium'),
        Radio(
          activeColor: AppColors.whiteColor,
          splashRadius: 0,
          value: "Long",
          groupValue: getLength,
          onChanged: (value) {
            // setState(() {
            //   getlength = value!;
            // });
          },
        ),
        const Text('Long'),
      ],
    );

}

  Container getPromote(String promote) {
    return Container(
      decoration: searchDecoration(AppColors.primaryColor, AppColors.whiteColor),
      child: TextField(
        decoration: searchStyle(promote, AppColors.whiteColor, AppColors.primaryColor,
            Icons.generating_tokens_outlined),
        cursorColor: AppColors.whiteColor,
        style: const TextStyle(color: AppColors.whiteColor),
        autocorrect: true,
        enableSuggestions: true,
      ),
    );
  }

}
