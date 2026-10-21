import '../exercise.dart';
import '../utils.dart';

class VowelCounter extends Exercise {
  VowelCounter() : super(13, 'Vowel Counter');

  @override
  void run() {
    final word = readText('Ingresa una palabra: ')?.trim();
    if (word == null || word.isEmpty) {
      print(invalidInput);
      return;
    }
    const vowels = 'aeiouáéíóúü';
    var count = 0;
    for (final letter in word.toLowerCase().split('')) {
      if (vowels.contains(letter)) {
        count++;
      }
    }
    print('Resultado: $count');
  }
}