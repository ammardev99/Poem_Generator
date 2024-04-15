import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          sizeBox(20),
          const ProfileWelcom(),
          sizeBox(20),

          searchBar(),
          //////////////////
          ///
        ],
      ),
    );
  }

  Container searchBar() {
    return Container(
      decoration: searchDecoration(whiteColor, primaryColor03),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: searchStyle("Search ...", primaryColor, primaryColor03, Icons.search),
        cursorColor: primaryColor,
        style: TextStyle(color: secondaryColor),
        autocorrect: true,
        enableSuggestions: true,
      ),
    );
  }
}

class ProfileWelcom extends StatelessWidget {
  const ProfileWelcom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: myHeading("Hi, Filip"),
      subtitle: info("Looking for specific poem?", secondaryColor),
      trailing: const Icon(
        Icons.person,
        size: 50,
      ),
    );
  }
}
