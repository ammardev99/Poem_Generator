import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'explore.dart';
import 'categories.dart';
import 'menu.dart';
import 'favorite.dart';
import 'genrate.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
const Explore(),
const Categories() ,
const GenratePoem() ,
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


