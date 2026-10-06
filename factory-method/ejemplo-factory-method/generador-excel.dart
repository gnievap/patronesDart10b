import 'documento-excel.dart';
import 'documento.dart';
import 'generador-reportes.dart';

class GeneradorExcel extends GeneradorReportes {
  @override
  Documento crearDocumento() => DocumentoExcel();
}
