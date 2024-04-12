import 'package:flutter/material.dart';
import 'package:poem_generator/Screens/onboarding/onboarding.dart';
import 'package:poem_generator/components/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title("Poem Genrator"),
      ),
      body: Center(
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OnBoarding()),
                );
              },
              icon: const Icon(Icons.backspace))),
    );
  }
}
