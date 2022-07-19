import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  final String text;
  const TextHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        )
      ),
    );
  }
}
