import 'package:flutter/material.dart';

class AnimatedPaddingg extends StatefulWidget {
  const AnimatedPaddingg({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingg> createState() => _AnimatedPaddinggState();
}

class _AnimatedPaddinggState extends State<AnimatedPaddingg> {
  double _padding = 10.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(_padding),
            curve: Curves.bounceInOut,
            duration: Duration(milliseconds: 500), // time animation change
            child: Image.asset(
              'assets/images/amazon-banner.jpg',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _padding += 20;
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_padding > 20) {
                      _padding -= 20;
                    }
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
