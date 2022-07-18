import 'package:flutter/material.dart';

AppBar AppBarMenu(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      "Menu",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26.0),
    ),
    backgroundColor: Colors.amber[100],
    elevation: 0,
    automaticallyImplyLeading: false, // hide leading icon back
  );
}
