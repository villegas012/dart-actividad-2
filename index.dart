import 'exercise.dart';
import 'exercises/ex01_positive_power.dart';
import 'exercises/ex02_double_or_triple.dart';
import 'exercises/ex03_root_or_square.dart';
import 'exercises/ex05_midweek_day.dart';
import 'exercises/ex06_tax_calculator.dart';
import 'exercises/ex15_in_range_validator.dart';
import 'utils.dart';

void main() {
  print('=== Ejercicios de programación en Dart ===');
  final exercises = <Exercise>[
    PositivePower(),
    DoubleOrTriple(),
    RootOrSquare(),
    MidweekDay(),
    TaxCalculator(),
    InRangeValidator(),
  ];

  while (true) {
    print('');
    for (final exercise in exercises) {
      print('  $exercise');
    }
    print('  0. Salir');

    final text = readText('Elige un ejercicio (0 para salir): ');
    if (text == null) return; // se terminó la entrada
    final option = int.tryParse(text.trim());
    if (option == 0) {
      print('¡Hasta luego!');
      return;
    }

    final matches = exercises.where((e) => e.number == option);
    if (matches.isEmpty) {
      print('Opción inválida.');
      continue;
    }
    print('\n--- ${matches.first} ---');
    matches.first.run(); // polimorfismo: cada ejercicio hace lo suyo
  }
}