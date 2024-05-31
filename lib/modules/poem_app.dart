import 'package:flutter/material.dart';
import 'package:poem_generator/Screens/favorite.dart';
import 'package:poem_generator/Screens/menu.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:poem_generator/modules/categories/view.dart';
import 'package:poem_generator/modules/genrate/view.dart';
import 'package:poem_generator/modules/home/view.dart';

class PoemApp extends StatefulWidget {
  const PoemApp({super.key});
  @override
  State<PoemApp> createState() => _PoemAppState();
}

class _PoemAppState extends State<PoemApp> {
    int _selectedScreenIndex = 0;

  // items/icon list for BottomAppBar
  List<TabItem> items = [
    const TabItem(icon: Icons.calendar_view_day_outlined,title: 'Home' ),
    const TabItem(icon: Icons.category_outlined,title: 'Categories'),
    const TabItem(icon: Icons.article_outlined,title: 'Poem',),
    const TabItem(icon: Icons.favorite_border,title: 'Favorite',),
    const TabItem(icon: Icons.menu,title: 'Menu',),
  ];

// main screens for app navigation 
final screen=[
 HomePage(),
CategoriesPage(),
GenratePage(),
const Favorite(),
const Menu(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screen[_selectedScreenIndex],
      bottomNavigationBar: bottomBar(),
    );
  }

// awesome_bottom_bar 
  BottomBarCreative bottomBar() {
    return BottomBarCreative(
      items: items,
      backgroundColor: whiteColor,
      color: secondaryColor,
      colorSelected: primaryColor,
      indexSelected: _selectedScreenIndex,
      isFloating: true,
      highlightStyle: const HighlightStyle(
          sizeLarge: true, isHexagon: true, elevation: 3,
          ),
      onTap: (int index) => setState(() {
        _selectedScreenIndex = index;
      }),
    );
  }
}


