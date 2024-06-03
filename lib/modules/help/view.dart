import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

import 'logic.dart';

// ignore: must_be_immutable
class HelpPage extends StatelessWidget {
  HelpPage({Key? key}) : super(key: key);

  final logic = Get.put(HelpLogic());
  final state = Get.find<HelpLogic>().state;
  List<FAQItem> faqs = [
        FAQItem(
      question: 'What is the AI-based Poem Generator app?',
      answer:'The AI-based Poem Generator app is a tool powered by artificial intelligence (AI) that creates poetry autonomously. It uses algorithms to analyze patterns in language and generate original poems based on various inputs.',),
        FAQItem(
      question: 'How does the Poem Generator app work?',
      answer:'The AI-based Poem Generator app is a tool powered by artificial intelligence (AI) that creates poetry autonomously. It uses algorithms to analyze patterns in language and generate original poems based on various inputs.',),
        FAQItem(
      question: 'What types of poems can the app generate?',
      answer:'The AI-based Poem Generator app is a tool powered by artificial intelligence (AI) that creates poetry autonomously. It uses algorithms to analyze patterns in language and generate original poems based on various inputs.',),
        FAQItem(
      question: 'Can users customize the poems generated?',
      answer:'The AI-based Poem Generator app is a tool powered by artificial intelligence (AI) that creates poetry autonomously. It uses algorithms to analyze patterns in language and generate original poems based on various inputs.',),
        FAQItem(
      question: 'Is the generated poetry original?',
      answer:'The AI-based Poem Generator app is a tool powered by artificial intelligence (AI) that creates poetry autonomously. It uses algorithms to analyze patterns in language and generate original poems based on various inputs.',),
        FAQItem(
      question: 'Is the app free to use, or is there a cost involved?',
      answer:'The AI-based Poem Generator app is a tool powered by artificial intelligence (AI) that creates poetry autonomously. It uses algorithms to analyze patterns in language and generate original poems based on various inputs.',),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: AppColors.whiteColor,
          ),
          title: customHeading("Help", AppColors.whiteColor),
          centerTitle: true,
          backgroundColor: AppColors.primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeBox(20),
              customTitle(
                "We’re here to help you with anything and everything on Poem Generator",
                AppColors.secondaryColor,
              ),
              sizeBox(5),
              customInfo(
                "We have got you covered share your  concern or check our frequently asked questions listed below.",
              ),
              sizeBox(20),
              Expanded(
                child: ListView.builder(
                  itemCount: faqs.length,
                  itemBuilder: (context, index) {
                    final faqItem = faqs[index];
                    return ExpansionTile(
                      title: customHeading(faqItem.question),
                      collapsedIconColor: AppColors.primaryColor,
                      initiallyExpanded: false,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: customInfo(faqItem.answer),
                        ),
                      ],
                    );
                  },
                ),
              ),
              customInfo("Still stuck? Help us a mail away"),
              sizeBox(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.toNamed(RouteName.contactUsPage),
                    style: nextButtonStyle(context),
                    child: customHeading("Send a message", AppColors.whiteColor),
                  ),
                ],
              ),
              sizeBox(40),
            ],
          ),
        ),
      ),
    );
  }
}

// Model
class FAQItem {
  final String question;
  final String answer;
  bool isExpanded = false;
  FAQItem({required this.question, required this.answer});
}
