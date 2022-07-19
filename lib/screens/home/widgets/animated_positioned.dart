import 'package:flutter/material.dart';

class AnimatedPositionedd extends StatefulWidget {
  const AnimatedPositionedd({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedd> createState() => _AnimatedPositioneddState();
}

class _AnimatedPositioneddState extends State<AnimatedPositionedd> {
  double _height = 300;
  bool _play = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            height: _height,
            child: Stack(
              children: [
                // AnimatedPositioned top
                AnimatedPositioned(
                  curve: Curves.easeInOut,
                  height: _play == true ? 100 : 100,
                  left: 0,
                  right: 0,
                  bottom: _play == true
                      ? MediaQuery.of(context).size.height / 7
                      : -100,
                  child: Center(
                      child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  )),
                  duration: Duration(milliseconds: 1200),
                ),
                // AnimatedPositioned mid
                AnimatedPositioned(
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: _play == true ? 100 : 100,
                  width: _play == true
                      ? MediaQuery.of(context).size.height / 1.88
                      : 0,
                  left: 0,
                  // right: 0,
                  bottom: _play == true
                      ? MediaQuery.of(context).size.height / 7
                      : 0,
                  child: Center(
                      child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  )),
                  duration: Duration(seconds: 1),
                ),
                // AnimatedPositioned bottom
                AnimatedPositioned(
                  curve: Curves.slowMiddle,
                  height: _play == true ? 100 : 100,
                  left: 0,
                  right: 0,
                  bottom: _play == true
                      ? MediaQuery.of(context).size.height / 7
                      : -100,
                  child: Center(
                      child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                  )),
                  duration: Duration(microseconds: 500),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _play = !_play;
              });
            },
            child: Text("click here"),
          )
        ],
      ),
    );
  }
}
