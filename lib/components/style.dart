import 'package:flutter/material.dart';
import 'package:poem_generator/utils/color.dart';

// ElevatedButton.style
ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
      foregroundColor: AppColors.whiteColor,
      backgroundColor: AppColors.primaryColor,
      fixedSize: const Size(double.infinity, 50));
}

// login input style
InputDecoration inputStyle(
  IconData icon,
  String hint,
) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    prefixIcon: Icon(
      icon,
      size: 20,
      color: AppColors.primaryColor,
    ),
    hintText: hint,
    hintStyle: const TextStyle(color: AppColors.borderColor),
    // suffixIcon:
    //     IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(
        color: AppColors.borderColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
      ),
    ),
  );
}

// Edit profile input style
InputDecoration editProfileInputStyle(String hint) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    hintText: hint,
    hintStyle: const TextStyle(color: AppColors.borderColor),
    border: OutlineInputBorder(
      // borderRadius: BorderRadius.circular(100),
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.borderColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      // borderRadius: BorderRadius.circular(100),
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
      ),
    ),
  );
}

// Search container
Decoration searchDecoration(Color color, Color borderColor) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: borderColor));
}

InputDecoration searchStyle(
    String hint, Color hintColor, Color fillColor, IconData icon) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.normal),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    suffixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: hintColor,
      ),
    ),
    border: InputBorder.none,
    fillColor: fillColor,
    focusColor: AppColors.borderColor,
  );
}

ButtonStyle nextButtonStyle(BuildContext context) {
  return ButtonStyle(
    backgroundColor: const WidgetStatePropertyAll(AppColors.primaryColor),
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 3.5, vertical: 15)),
  );
}
