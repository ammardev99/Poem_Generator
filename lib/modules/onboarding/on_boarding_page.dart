import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:poem_generator/models/onboarding_model.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Skip
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          Get.offAndToNamed(RouteName.selectAccountScreen);
                        });
                      },
                      child: info("Skip", AppColors.borderColor))),
            ),
            sizeBox(40),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: onBoardingScreen.length,
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SvgPicture.asset(onBoardingScreen[index].image),
                        sizeBox(40),
                        Container(
                            child: myTitle(onBoardingScreen[index].title,
                                AppColors.secondaryColor)),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingScreen.length,
                      (index) => buildDot(index),
                    ),
                  ),
                  sizeBox(20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (currentIndex < onBoardingScreen.length - 1) {
                            _controller.animateToPage(
                              currentIndex + 1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          } else {
                            Get.offAndToNamed(RouteName.selectAccountScreen);
                          }
                        });
                      },
                      style: buttonStyle(),
                      child: Text(currentIndex == onBoardingScreen.length - 1
                          ? "Continue"
                          : "Next"),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
            color: currentIndex == i
                ? AppColors.primaryColor
                : AppColors.primaryColor03,
            borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
