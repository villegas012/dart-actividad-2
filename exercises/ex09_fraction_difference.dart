import '../exercise.dart';
import '../fraction.dart';
import '../utils.dart';

class FractionDifference extends Exercise {
  FractionDifference() : super(9, 'Fraction Difference');

  @override
  void run() {
    final firstText = readText('Ingresa la primera fracción (a/b): ');
    final secondText = readText('Ingresa la segunda fracción (a/b): ');
    final first = firstText == null ? null : Fraction.parse(firstText);
    final second = secondText == null ? null : Fraction.parse(secondText);
    if (first == null || second == null) {
      print(invalidInput);
      return;
    }
    print('Resultado: ${first - second}');
  }
}