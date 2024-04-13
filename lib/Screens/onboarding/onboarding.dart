import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/Screens/auth/selectaccount.dart';
import 'package:poem_generator/Screens/onboarding/onboarding_model.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController _controller = PageController();
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: PageView.builder(
          controller: _controller,
          itemCount: onBoardingScreen.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            Get.offAll(const SelectAccount());
                          });
                        },
                        child: info("Skip", borderColor))),
                sizeBox(40),
                SvgPicture.asset(onBoardingScreen[index].image),
                sizeBox(40),
                myTitle(onBoardingScreen[index].title, secondaryColor),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardingScreen.length,
                    (index) => buildDot(index),
                  ),
                ),
                sizeBox(20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex < onBoardingScreen.length - 1) {
                        _controller.animateToPage(
                          currentIndex + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Get.offAll(const SelectAccount());
                      }
                    });
                  },
                  style: buttonstyle(),
                  child: Text(currentIndex == onBoardingScreen.length - 1
                      ? "Continue"
                      : "Next"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  InkWell buildDot(int i) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        setState(() {
          currentIndex = i;
          if (currentIndex < onBoardingScreen.length) {
            _controller.animateToPage(
              currentIndex,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }
        });
      },
      child: Container(
        height: 10,
        width: currentIndex == i ? 25 : 10,
        margin: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
            color: currentIndex == i ? primaryColor : primaryColor03,
            borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
