import 'controlador-comandos.dart';
import 'eliminar-tarea.dart';

void main() {
  final tareas = [
    'Estudiar Dart',
    'Hacer mis HUs',
    'Preguntarle a chat como hacer un merge',
    'Decirle a chat que haga mi tarea de inglés',
    'Hacer UI de la app móvil'
  ];

  final controlador = ControladorComandos();

  print('Las tareas pendientes son: ${tareas}');

  controlador.ejecutar(EliminarTarea(tareas, 1));

  print('Lista de tareas después de eliminar: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 0));

  print('Lista de tareas después de eliminar: $tareas');

  // Deshacer la eliminación
  controlador.deshacer();
  print('Lista de tareas después del primer deshacer: $tareas');

  controlador.deshacer();
  print('Lista de tareas después del segundo deshacer: $tareas');

  // Cada comando conserva su propia eliminación
  // Cada comando conoce como ejecutar y revertir la acción
  // Ahora se pueden agregar más comandos a la agenda
  // Conveniente cuando se requiere manipular un historial de comandos
}
