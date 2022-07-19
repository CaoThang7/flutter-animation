import 'package:flutter/material.dart';
import 'dart:math';

class SineCurve extends Curve {
  final double count;
  SineCurve({this.count = 1});

  @override
  double transformInternal(double t) {
    // TODO: implement transformInternal
    var val = sin(count * 2 * pi * t) * 0.5 + 0.5; //custom Curve with sin
    return val; 
  }
}
