import '../exercise.dart';
import '../utils.dart';

class SumOfEvens extends Exercise {
  SumOfEvens() : super(8, 'Sum of Evens');

  @override
  void run() {
    var sum = 0;
    for (var i = 1; i <= 50; i++) {
      if (i % 2 == 0) {
        sum += i;
      }
    }
    print('Resultado: $sum');
  }
}