import 'dart:math';

import 'package:flutter/material.dart';

class Brain {
  Brain({required this.height, required this.weight, required this.age});

  final int height;
  final int weight;
  final int age;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Color getColor() {
    if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi >= 18.5) {
      return Colors.green;
    } else {
      return Colors.yellow.shade800;
    }
  }

  String getIdealWeight() {
    var firstheight = height - 152.4;
    var idealweight = 50 + (0.91 * firstheight);
    return idealweight.toStringAsFixed(1);
  }

  String getbmr() {
    var bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    return bmr.toStringAsFixed(1);
  }
}
