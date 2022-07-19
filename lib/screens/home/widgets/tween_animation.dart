import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  double _sliderValue = 0;
  Color? _newColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TweenAnimationBuilder<Color?>(
            child: Image.asset(
              'assets/images/moon.jpg',
              height: 200,
              width: 200,
            ),
            duration: Duration(seconds: 1), // time animation change
            tween: ColorTween(begin: Colors.white, end: _newColor),
            builder: (_, Color? color, Widget? myChild) {
              return ColorFiltered(
                  colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
                  child: myChild);
            },
          ),
          SizedBox(
            height: 10,
          ),
          Slider.adaptive(
            value: _sliderValue,
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
                _newColor = Color.lerp(Colors.white, Colors.red, _sliderValue);
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
