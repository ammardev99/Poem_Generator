import 'package:flutter/material.dart';
import 'package:poem_generator/components/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myHeading("All Poems"),
      ),
    );
  }
}
