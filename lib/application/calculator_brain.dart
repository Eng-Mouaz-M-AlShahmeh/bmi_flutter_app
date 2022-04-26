/// Developed by: Eng Mouaz M AlShahmeh
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = (weight! / pow(height! / 100, 2));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'وزن زائد';
    } else if (_bmi! > 18.5) {
      return 'طبيعي';
    } else {
      return 'وزن ناقص';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'لديك معدل كتلة جسم أعلى من الطبيعي٫ مارس الرياضة أكثر!';
    } else if (_bmi! >= 18.5) {
      return 'أنت تملك معدل كتلة جسم طبيعي٫ عمل جيد!';
    } else {
      return 'لديك معدل كتلة جسم أقل من الطبيعي٫ حاول أن تأكل أكثر!';
    }
  }
}
