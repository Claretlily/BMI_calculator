import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return 'overweight'.toUpperCase();
    } else if (_bmi > 18.5) {
      return 'normal'.toUpperCase();
    } else {
      return 'underweight'.toUpperCase();
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal \nbody weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. \nGood job!';
    } else {
      return 'You have a lower than normal \nbody weight. You can eat a bit more.';
    }
  }
}
