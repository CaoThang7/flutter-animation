import 'package:flutter/material.dart';
import 'package:flutter_animation/models/product.dart';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 108, 223, 218),
      Color.fromARGB(255, 160, 242, 224),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
  static const importantmessageColor = Color(0xff22A0B2);
  static const activeColor = Color(0xff168A9A);
  static const raidoTitleColor = Color(0xffFCF7F1);
  static const borderRadioColor = Color.fromARGB(255, 225, 194, 168);
}

List<Product> products = [
  Product(color: Colors.black, path: 'assets/images/headphone1.jpg'),
  Product(color: Colors.white, path: 'assets/images/headphone2.jpg'),
  Product(color: const Color(0xFFFEE9EC), path: 'assets/images/headphone3.jpg'),
];
