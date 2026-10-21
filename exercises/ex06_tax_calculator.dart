import '../exercise.dart';
import '../utils.dart';

class TaxCalculator extends Exercise {
  TaxCalculator() : super(6, 'Tax Calculator');

  @override
  void run() {
    final salary = readDouble('Ingresa tu salario anual: ');
    if (salary == null) {
      print(invalidInput);
      return;
    }
    if (salary > 12000) {
      // Se multiplica por 15 y luego se divide entre 100 para evitar errores
      // de redondeo que da 0.15 en coma flotante.
      final tax = (salary - 12000) * 15 / 100;
      print('Resultado: ${formatNumber(tax)}');
    } else {
      print('Resultado: No debe impuestos.');
    }
  }
}