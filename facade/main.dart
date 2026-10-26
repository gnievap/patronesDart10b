import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();

  // Reproducir película
  proyector.encender();
  audio.encender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('Volver al futuro 2');
  // Todas las tareas tienen en común lograr un objetivo
  // Sin facade se realizan llamados a clases diferentes
  // y funciones diferentes para lograr una tarea.

  // Terminar la función
  reproductor.detener();
  audio.apagar();
  proyector.apagar();
}
