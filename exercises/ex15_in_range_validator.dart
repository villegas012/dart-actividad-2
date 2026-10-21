import '../exercise.dart';
import '../utils.dart';

class InRangeValidator extends Exercise {
  InRangeValidator() : super(15, 'InRange Validator');

  @override
  void run() {
    final n = readDouble('Ingresa un número: ');
    if (n == null) {
      print(invalidInput);
      return;
    }
    if (n >= 10 && n <= 20) {
      print('Resultado: Está en el rango.');
    } else {
      print('Resultado: Fuera del rango.');
    }
  }
}