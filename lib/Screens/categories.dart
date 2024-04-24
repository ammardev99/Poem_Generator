import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/models/category_model.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int totallPoems = 0;
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < categoriesList.length; i++) {
      totallPoems += categoriesList[i].count;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: myHeading("All Poems", whiteColor),
              backgroundColor: primaryColor,
            ),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: categoriesList.length,
                        itemBuilder: (context, index) {
                          return poemCategory(categoriesList[index]);
                        },
                      ),
                    ),
                  ],
                )),
                ),
      ),
    );
  }
}
