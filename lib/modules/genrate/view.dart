import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

import 'logic.dart';

// ignore: must_be_immutable
class GenratePage extends StatelessWidget {
  GenratePage({Key? key}) : super(key: key);

  final logic = Get.put(GenrateLogic());
  final state = Get.find<GenrateLogic>().state;
  String getlength = "";

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
              color: primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizeBox(60),
                  myHeading("Poem Genrator", whiteColor),
                  const SizedBox(
                    height: 10,
                  ),
                  getPromote("write something for poem"),
                  const SizedBox(
                    height: 10,
                  ),
                  myHeading("Length:", whiteColor),
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
                          backgroundColor: MaterialStatePropertyAll(whiteColor),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width / 3,
                                  vertical: 20)),
                        ),
                        child: myHeading("Generate", secondaryColor),
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
            // Genrate poem here
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
          activeColor: whiteColor,
          splashRadius: 0,
          value: "Regular",
          groupValue: getlength,
          onChanged: (value) {
            // setState(() {
            //   getlength = value!;
            // });
          },
        ),
        const Text('Regular'),
        Radio(
          activeColor: whiteColor,
          splashRadius: 0,
          value: "Medium",
          groupValue: getlength,
          onChanged: (value) {
            // setState(() {
            //   getlength = value!;
            // });
          },
        ),
        const Text('Medium'),
        Radio(
          activeColor: whiteColor,
          splashRadius: 0,
          value: "Long",
          groupValue: getlength,
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
      decoration: searchDecoration(primaryColor, whiteColor),
      child: TextField(
        decoration: searchStyle(promote, whiteColor, primaryColor,
            Icons.generating_tokens_outlined),
        cursorColor: whiteColor,
        style: TextStyle(color: whiteColor),
        autocorrect: true,
        enableSuggestions: true,
      ),
    );
  }

}
