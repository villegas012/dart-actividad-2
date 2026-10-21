/// Fracción inmutable: siempre simplificada y con el signo en el numerador.
class Fraction {
  Fraction._(this.numerator, this.denominator);

  /// Crea una fracción simplificada. Lanza [ArgumentError] si [denominator] es 0.
  factory Fraction(int numerator, int denominator) {
    if (denominator == 0) {
      throw ArgumentError.value(denominator, 'denominator', 'No puede ser 0');
    }
    if (denominator < 0) {
      numerator = -numerator;
      denominator = -denominator;
    }
    final divisor = _gcd(numerator.abs(), denominator);
    return Fraction._(numerator ~/ divisor, denominator ~/ divisor);
  }

  /// Interpreta texto como "a/b" (o un entero "a"). Devuelve null si es inválido.
  static Fraction? parse(String text) {
    final parts = text.trim().split('/');
    if (parts.length > 2) return null;
    final numerator = int.tryParse(parts[0].trim());
    final denominator = parts.length == 2 ? int.tryParse(parts[1].trim()) : 1;
    if (numerator == null || denominator == null || denominator == 0) {
      return null;
    }
    return Fraction(numerator, denominator);
  }

  final int numerator;
  final int denominator;

  /// Diferencia entre esta fracción y [other].
  Fraction operator -(Fraction other) => Fraction(
        numerator * other.denominator - other.numerator * denominator,
        denominator * other.denominator,
      );

  @override
  String toString() =>
      denominator == 1 ? '$numerator' : '$numerator/$denominator';

  /// Máximo común divisor (algoritmo de Euclides).
  static int _gcd(int a, int b) {
    while (b != 0) {
      final rest = a % b;
      a = b;
      b = rest;
    }
    return a;
  }
}