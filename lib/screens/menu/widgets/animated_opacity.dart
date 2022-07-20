import 'package:flutter/material.dart';

class AnimatedOpacityy extends StatefulWidget {
  const AnimatedOpacityy({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityy> createState() => _AnimatedOpacityyState();
}

class _AnimatedOpacityyState extends State<AnimatedOpacityy> {
  bool _opacity = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            curve: Curves.elasticInOut,
            opacity: _opacity == true ? 0.2 : 1,
            duration: Duration(seconds: 1), // time animation change
            child: Image.asset(
              'assets/images/happy.png',
              height: 150,
              width: 150,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = !_opacity;
              });
            },
            child: Text("change opacity"),
          )
        ],
      ),
    );
  }
}
