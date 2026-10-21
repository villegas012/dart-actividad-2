import '../exercise.dart';
import '../utils.dart';

class MidweekDay extends Exercise {
  MidweekDay() : super(5, 'Midweek Day');

  @override
  void run() {
    final number = readInt('Ingresa un número entre 1 y 7: ');
    if (number == null) {
      print(invalidInput);
      return;
    }
    const days = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
    if (number >= 1 && number <= days.length) {
      print('Resultado: ${days[number - 1]}');
    } else {
      print('Resultado: Número fuera del rango laboral.');
    }
  }
}