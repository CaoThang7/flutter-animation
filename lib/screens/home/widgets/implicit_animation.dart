import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/sincurve.dart';

class ImplicitAnimations extends StatefulWidget {
  const ImplicitAnimations({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimations> createState() => _ImplicitAnimationsState();
}

class _ImplicitAnimationsState extends State<ImplicitAnimations> {
  bool _bigger = false;
  SineCurve sineCurve = SineCurve();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            width: _bigger == true ? 150 : 70,
            duration: Duration(seconds: 1), // time animation change
            curve: sineCurve, //curve(đường cong) animation
            //you can choose or custom for your cuve
            child: Image.asset('assets/images/happy.png'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _bigger = !_bigger; // setState value _bigger
              });
            },
            child: Text("change size"),
          )
        ],
      ),
    );
  }
}
