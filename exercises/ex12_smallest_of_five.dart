import '../exercise.dart';
import '../utils.dart';

class SmallestOfFive extends Exercise {
  SmallestOfFive() : super(12, 'Smallest of Five');

  @override
  void run() {
    double? smallest;
    for (var i = 1; i <= 5; i++) {
      final value = readDouble('Ingresa el número $i: ');
      if (value == null) {
        print(invalidInput);
        return;
      }
      if (smallest == null || value < smallest) {
        smallest = value;
      }
    }
    print('Resultado: ${formatNumber(smallest!)}');
  }
}