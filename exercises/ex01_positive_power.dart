import '../exercise.dart';
import '../utils.dart';

class PositivePower extends Exercise {
  PositivePower() : super(1, 'Positive Power');

  @override
  void run() {
    final n = readDouble('Ingresa un número: ');
    if (n == null) {
      print(invalidInput);
      return;
    }
    if (n < 0) {
      print('Resultado: Número negativo.');
    } else {
      print('Resultado: ${formatNumber(n * n)}');
    }
  }
}