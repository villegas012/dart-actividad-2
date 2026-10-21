/// Clase base de todos los ejercicios.
///
/// Cada ejercicio hereda de aquí y sobrescribe [run]. El menú trabaja con
/// `Exercise` sin saber cuál es cuál (polimorfismo).
abstract class Exercise {
  Exercise(this.number, this.title);

  /// Número del ejercicio según el PDF.
  final int number;

  /// Nombre del ejercicio según el PDF.
  final String title;

  /// Pide los datos, calcula y muestra el resultado.
  void run();

  @override
  String toString() => '$number. $title';
}