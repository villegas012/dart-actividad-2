import '../exercise.dart';
import '../utils.dart';

class RemainderFinder extends Exercise {
  RemainderFinder() : super(7, 'Remainder Finder');

  @override
  void run() {
    final dividend = readInt('Ingresa el primer número: ');
    final divisor = readInt('Ingresa el segundo número: ');
    if (dividend == null || divisor == null) {
      print(invalidInput);
      return;
    }
    if (divisor == 0) {
      print('Resultado: No se puede dividir entre cero.');
      return;
    }
    print('Resultado: ${dividend % divisor}');
  }
}