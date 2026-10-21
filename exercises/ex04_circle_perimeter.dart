import 'dart:math';

import '../exercise.dart';
import '../utils.dart';

class CirclePerimeter extends Exercise {
  CirclePerimeter() : super(4, 'Circle Perimeter');

  @override
  void run() {
    final radius = readDouble('Ingresa el radio del círculo: ');
    if (radius == null) {
      print(invalidInput);
      return;
    }
    if (radius < 0) {
      print('Resultado: El radio no puede ser negativo.');
      return;
    }
    print('Resultado: ${(2 * pi * radius).toStringAsFixed(2)}');
  }
}