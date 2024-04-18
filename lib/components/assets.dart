import 'package:flutter/material.dart';

// App Colors
Color primaryColor = const Color(0xFFF57760);
Color primaryColor03 = primaryColor.withOpacity(0.3);
Color secondaryColor = const Color(0xFF374151);
Color whiteColor = const Color(0xFFFFFFFF);
Color borderColor = const Color(0xFFAEAEAE);
Color blackColor = const Color(0xFF363636);

// ElevatedButton.style
ButtonStyle buttonstyle() {
  return ElevatedButton.styleFrom(
      foregroundColor: whiteColor,
      backgroundColor: primaryColor,
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
      color: primaryColor,
    ),
    hintText: hint,
    hintStyle: TextStyle(color: borderColor),
    // suffixIcon:
    //     IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(
        color: borderColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(
        color: primaryColor,
      ),
    ),
  );
}

// Edit profile input style
InputDecoration editProfileinputStyle(String hint
) {
  return InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      hintText: hint,
                      hintStyle: TextStyle(color: borderColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: borderColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: primaryColor,
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


InputDecoration searchStyle(String hint, Color hintColor, Color fillColor , IconData icon ) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.normal),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    suffixIcon: IconButton(onPressed: (){}, icon: Icon(
        icon,
        color: hintColor,
      ),),
    border: InputBorder.none,
    fillColor: fillColor,
    focusColor: borderColor,
  );
}
