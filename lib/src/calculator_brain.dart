import 'dart:math';

class CaLculatorBrain {
  final int height;
  final int weight;
  CaLculatorBrain({this.height, this.weight});

  double getResult() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

//   String getResultInterpretation() {
//     if (_bmi >= 25.0) {
//       return 'you have a higher than normal body weight, try to exercise more';
//     } else if (_bmi > 18.0) {
//       return 'you have a normal body weight. God job!!';
//     } else {
//       return 'You have a lower than normal body weight,try to eat a bit more';
//     }
//   }
}
