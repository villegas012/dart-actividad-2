import '../exercise.dart';
import '../utils.dart';

class StringLength extends Exercise {
  StringLength() : super(10, 'String Length');

  @override
  void run() {
    final word = readText('Ingresa una palabra: ')?.trim();
    if (word == null || word.isEmpty) {
      print(invalidInput);
      return;
    }
    print('Resultado: ${word.length}');
  }
}