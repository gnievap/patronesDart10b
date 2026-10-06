import 'documento.dart';
import 'dart:convert';

class DocumentoJson implements Documento {
  @override
  String generar(List<int> calificaciones) {
    //
    return jsonEncode({'format json  calificaciones': calificaciones});
  }
}
