import 'dart:math';

import '../exercise.dart';
import '../utils.dart';

class RootOrSquare extends Exercise {
  RootOrSquare() : super(3, 'Root or Square');

  @override
  void run() {
    final n = readDouble('Ingresa un número: ');
    if (n == null) {
      print(invalidInput);
      return;
    }
    if (n > 0) {
      print('Resultado: ${formatNumber(sqrt(n))}');
    } else {
      print('Resultado: ${formatNumber(n * n)}');
    }
  }
}