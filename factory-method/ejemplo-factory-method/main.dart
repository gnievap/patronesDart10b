import 'generador-excel.dart';
import 'generador-json.dart';
import 'generador-reportes.dart';
import 'generador-texto.dart';

void main() {
  final generadores = <GeneradorReportes>[
    GeneradorTexto(),
    GeneradorExcel(),
    GeneradorJson(),
  ];

  for (final generador in generadores) {
    generador.generarReporte([8, 9, 0, 10, 0]);
  }
}
