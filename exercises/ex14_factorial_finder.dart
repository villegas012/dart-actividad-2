import '../exercise.dart';
import '../utils.dart';

class FactorialFinder extends Exercise {
  FactorialFinder() : super(14, 'Factorial Finder');

  @override
  void run() {
    final n = readInt('Ingresa un número entero: ');
    if (n == null) {
      print(invalidInput);
      return;
    }
    if (n < 0) {
      print('Resultado: El factorial no está definido para negativos.');
      return;
    }
    if (n > 1000) {
      print('Resultado: Número demasiado grande (máximo 1000).');
      return;
    }
    // BigInt porque un int se desborda desde 21!.
    var result = BigInt.one;
    for (var i = 2; i <= n; i++) {
      result *= BigInt.from(i);
    }
    print('Resultado: $result');
  }
}