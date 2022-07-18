import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/menu/widgets/app_bars.dart';

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
    );
  }
}
