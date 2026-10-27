import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final cine = CineFacade(
    Proyector(),
    SistemaAudio(),
    Reproductor(),
  );

  // Reproducir película
  cine.verPelicula('Un domingo cualquiera', 25);

  // Terminar la función
  cine.terminarFuncion();

  // La fachada coordina los pasos.
  // El usuario de la fachada (dev) solo conoce los métodos básicos
  // El usuario (dev) no necesita conocer los detalles
  // El procedimiento se concentra en una clase.
}
