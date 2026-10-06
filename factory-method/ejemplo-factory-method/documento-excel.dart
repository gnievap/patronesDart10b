import 'documento.dart';

class DocumentoExcel implements Documento {
  @override
  String generar(List<int> calificaciones) {
    //
    return 'Calificaciones: ${calificaciones.join(', ')},  en formato de excel';
  }
}
