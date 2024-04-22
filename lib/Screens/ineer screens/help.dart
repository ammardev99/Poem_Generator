import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'contactus.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          leading: BackButton(
            color: whiteColor,
          ),
          title: myHeading("Help", whiteColor),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeBox(20),
              myTitle(
                "We’re here to help you with anything and everyting on Poem Generator",
                secondaryColor,
              ),
              sizeBox(5),
              info(
                "We have got you covered share your  concern or check our frequently asked questions listed below.",
              ),
              sizeBox(20),
              Expanded(
                child: ListView.builder(
                  itemCount: faqs.length,
                  itemBuilder: (context, index) {
                    final faqItem = faqs[index];
                    return ExpansionTile(
                      title: myHeading(faqItem.question),
                      collapsedIconColor: primaryColor,
                      initiallyExpanded: false,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: info(faqItem.answer),
                        ),
                      ],
                    );
                  },
                ),
              ),
              info("Still stuck? Help us a mail away"),
              sizeBox(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.to(const ContactUs()),
                    style: nextButtonStyle(context),
                    child: myHeading("Send a message", whiteColor),
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
