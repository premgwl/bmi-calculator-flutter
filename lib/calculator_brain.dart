import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain(this.height, this.weight);

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
      return 'You have a higher than normal weight. Try to perform some exercises to reduce your weight.';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight. Keep it up.';
    } else {
      return 'You have a lower than normal weight. You can eat more to bulk up.';
    }
  }
}
