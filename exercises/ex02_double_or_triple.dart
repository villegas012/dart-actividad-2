import '../exercise.dart';
import '../utils.dart';

class DoubleOrTriple extends Exercise {
  DoubleOrTriple() : super(2, 'Double or Triple');

  @override
  void run() {
    final first = readDouble('Ingresa el primer número: ');
    final second = readDouble('Ingresa el segundo número: ');
    if (first == null || second == null) {
      print(invalidInput);
      return;
    }
    // Con un empate (6, 6) el PDF espera 12, por eso se usa >=.
    if (first >= second) {
      print('Resultado: ${formatNumber(first * 2)}');
    } else {
      print('Resultado: ${formatNumber(second * 3)}');
    }
  }
}