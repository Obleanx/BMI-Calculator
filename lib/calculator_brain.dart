import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
    this.height,
    this.weight,
  );
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.50) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body weight is above normal.Try to excercise more.  ';
    } else if (_bmi > 18.50) {
      return 'You have a normal body Weight Good JOb';
    } else {
      return 'Your body Weight is below normal try to Eat more.';
    }
  }
}
