
import 'package:flutter/material.dart';
import 'package:poem_generator/utils/color.dart';

class Category {
  String type;
  Color color;
  String title;
  int count;
  Category({
    required this.type,
    required this.color,
    required this.title,
    required this.count,
  });
}
List<Category> categoriesList = [
  Category(
    type: "love Poems",
    color: Colors.red,
    title: "We generate love poems based on your prompts.",
    count: 1000,
  ),
  Category(
    type: "Narrative",
    color: AppColors.secondaryColor,
    title: "We create narrative poems based on your prompts.",
    count: 500,
  ),
  Category(
    type: "Acrostic",
    color: AppColors.primaryColor,
    title: "We craft acrostic poems based on your prompts.",
    count: 50,
  ),
  Category(
    type: "Limerick",
    color: AppColors.secondaryColor,
    title: "We compose limerick poems based on your prompts.",
    count: 2500,
  ),
  Category(
    type: "Alliteration",
    color: AppColors.borderColor,
    title: "We write alliteration poems based on your prompts.",
    count: 1100,
  ),
  Category(
    type: "love",
    color: AppColors.primaryColor,
    title: "We generate love poems based on your prompts.",
    count: 25,
  ),
  Category(
    type: "Happy",
    color: AppColors.secondaryColor,
    title: "We create happy poems based on your prompts.",
    count: 36000,
  ),
  Category(
    type: "New Poems",
    color: Colors.black,
    title: "We generate new poems based on your prompts.",
    count: 550,
  ),
];
