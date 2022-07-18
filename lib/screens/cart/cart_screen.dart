import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/cart/widgets/app_bars.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCart(context),
    );
  }
}
