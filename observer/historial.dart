import 'observador.dart';

class Historial implements Observador {
  @override
  void actualizar(String tarea) {
    print('Historial: publicación registrada de "$tarea"');
  }
}
