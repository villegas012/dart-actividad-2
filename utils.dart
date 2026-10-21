import 'dart:io';

/// Mensaje cuando el usuario escribe un dato que no se puede interpretar.
const String invalidInput = 'Entrada inválida.';

/// Muestra [prompt] y devuelve la línea escrita (null si no hay más entrada).
String? readText(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync();
}

/// Lee un número decimal. Devuelve null si el dato es inválido.
/// Acepta coma o punto como separador decimal.
double? readDouble(String prompt) {
  final text = readText(prompt)?.trim().replaceAll(',', '.');
  if (text == null) return null;
  final value = double.tryParse(text);
  if (value == null || !value.isFinite) return null;
  return value;
}

/// Lee un número entero. Devuelve null si el dato es inválido.
int? readInt(String prompt) {
  final text = readText(prompt)?.trim();
  if (text == null) return null;
  return int.tryParse(text);
}

/// Muestra un número sin ".0" cuando es entero (25.0 -> "25").
String formatNumber(num value) {
  if (value is int) return '$value';
  if (value.isFinite && value.abs() < 1e15 && value == value.truncateToDouble()) {
    return value.toInt().toString();
  }
  return value.toString();
}