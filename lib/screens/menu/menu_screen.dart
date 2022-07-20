import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/menu/widgets/animated_opacity.dart';
import 'package:flutter_animation/screens/menu/widgets/animated_padding.dart';
import 'package:flutter_animation/screens/menu/widgets/app_bars.dart';
import 'package:flutter_animation/widgets/text_header.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMenu(context),
       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: "Animated Opacity"),
            AnimatedOpacityy(),
            SizedBox(height: 10),
            TextHeader(text: "Animated Padding"),
            AnimatedPaddingg(),
          ],
        ),
      ),
    );
  }
}
