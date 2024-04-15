import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class GenratePoem extends StatefulWidget {
  const GenratePoem({super.key});

  @override
  State<GenratePoem> createState() => _GenratePoemState();
}

class _GenratePoemState extends State<GenratePoem> {
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              color: primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizeBox(40),
                  myHeading("Poem Genrator", whiteColor),
                  const SizedBox(
                    height: 10,
                  ),
                  getPromote("write something for poem"),
                  const SizedBox(
                    height: 10,
                  ),
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
                          backgroundColor:
                              MaterialStatePropertyAll(whiteColor),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 125, vertical: 20)),
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
            SvgPicture.asset('images/empty.svg'),
          ],
        ),
      ),
    );
  }

  Row selectLength() {
    return Row(
      children: [
        myHeading("Length:", whiteColor),
        sizeBox(10),
        Expanded(
          child: Row(
            children: [
              Radio(
                activeColor: whiteColor,
                splashRadius: 0,
                value: "Regular",
                groupValue: getlength,
                onChanged: (value) {
                  setState(() {
                    getlength = value!;
                  });
                },
              ),
              const Text('Regular'),
              sizeBox(10),
              Radio(
                activeColor: whiteColor,
                splashRadius: 0,
                value: "Medium",
                groupValue: getlength,
                onChanged: (value) {
                  setState(() {
                    getlength = value!;
                  });
                },
              ),
              const Text('Medium'),
              sizeBox(10),
              Radio(
                activeColor: whiteColor,
                splashRadius: 0,
                value: "Long",
                groupValue: getlength,
                onChanged: (value) {
                  setState(() {
                    getlength = value!;
                  });
                },
              ),
              const Text('Long'),
            ],
          ),
        ),
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