class OnBoardingContent {
  String image;
  String title;
  String description;
  OnBoardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoardingContent> onBoardingScreen = [
  OnBoardingContent(
      image: "assets/svg/onboarding/OnBoarding3.svg",
      title: "We Generate the poem on your prompt.",
      description: ""),
  OnBoardingContent(
      image: "assets/svg/onboarding/OnBoarding2.svg",
      title: "Generate poem anywhere easily and conveniently.",
      description: ""),
  OnBoardingContent(
      image: "assets/svg/onboarding/OnBoarding1.svg",
      title: "Let's generate your poem on your keywords.",
      description: ""),
];
