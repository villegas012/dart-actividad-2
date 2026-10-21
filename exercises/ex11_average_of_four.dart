import '../exercise.dart';
import '../utils.dart';

class AverageOfFour extends Exercise {
  AverageOfFour() : super(11, 'Average of Four');

  @override
  void run() {
    var sum = 0.0;
    for (var i = 1; i <= 4; i++) {
      final value = readDouble('Ingresa el número $i: ');
      if (value == null) {
        print(invalidInput);
        return;
      }
      sum += value;
    }
    print('Resultado: ${formatNumber(sum / 4)}');
  }
}