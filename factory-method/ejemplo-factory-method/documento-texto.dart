import 'documento.dart';

class DocumentoTexto implements Documento {
  @override
  String generar(List<int> calificaciones) {
    //
    return 'Calificaciones: ${calificaciones.join(', ')}, en formato de word';
  }
}
