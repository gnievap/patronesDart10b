// Agenda SIN Observer

import 'notificador.dart';
import 'panel-alumno.dart';

class Agenda {
  final PanelAlumno panelAlumno = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print('Publicando tarea: $tarea');
    panelAlumno.mostrar(tarea);
    notificador.notificar(tarea);
  }

  // Sin observer, la agenda termina de encargarse
  // de todo:
  //publicar tareas, coordinar componentes de otro tipo, etc.
}
