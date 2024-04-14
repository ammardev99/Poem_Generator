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
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primaryColor03)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search,
            ),
          ),
          border: InputBorder.none,
          fillColor: primaryColor,
          focusColor: primaryColor,
        ),
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
