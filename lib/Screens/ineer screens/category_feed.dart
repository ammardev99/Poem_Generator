import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class CategoryFeed extends StatefulWidget {
  final String name;

  const CategoryFeed({super.key, required this.name});

  @override
  // ignore: library_private_types_in_public_api
  _CategoryFeedState createState() => _CategoryFeedState();
}

class _CategoryFeedState extends State<CategoryFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: whiteColor,
          ),
          title: myHeading(widget.name, whiteColor),
          backgroundColor: primaryColor,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              sizeBox(20),
              poemPost(context),
              sizeBox(10),
              poemPost(context),
              sizeBox(10),
              poemPost(context),
              sizeBox(20),
            ],
          ),
        ));
  }
}
