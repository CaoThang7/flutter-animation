import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/home/widgets/animated_positioned.dart';
import 'package:flutter_animation/screens/home/widgets/app_bars.dart';
import 'package:flutter_animation/screens/home/widgets/implicit_animation.dart';
import 'package:flutter_animation/widgets/text_header.dart';
import 'package:flutter_animation/screens/home/widgets/tween_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: "Implicit Animations"),
            ImplicitAnimations(),
            SizedBox(height: 10),
            TextHeader(text: "Tween Animations"),
            TweenAnimation(),
            TextHeader(text: "Animated Positioned"),
            AnimatedPositionedd(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
