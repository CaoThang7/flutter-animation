import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/global_variables.dart';

class AnimatedsSwitcher extends StatefulWidget {
  const AnimatedsSwitcher({Key? key}) : super(key: key);

  @override
  State<AnimatedsSwitcher> createState() => _AnimatedsSwitcherState();
}

class _AnimatedsSwitcherState extends State<AnimatedsSwitcher>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatedController;
  late Animation<Offset> _slideAnimation;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animatedController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _slideAnimation =
        Tween(begin: const Offset(0, 0), end: const Offset(0, 0.04))
            .animate(_animatedController);
  }

  // Override dispose method and dispose the AnimationController instance
  @override
  dispose() {
    _animatedController.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlideTransition(
          position: _slideAnimation,
          child: AnimatedSwitcher(
              switchInCurve: Interval(0.0, 0.5, curve: Curves.linear),
              switchOutCurve: Interval(0.5, 1.0, curve: Curves.linear),
              duration: Duration(milliseconds: 700),
              child: Image.asset(
                products[currentIndex].path,
                key: ValueKey(currentIndex),
              )),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                products.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.2),
                          color: products[index].color,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        width: 50,
                      ),
                    )))
      ],
    ));
  }
}
