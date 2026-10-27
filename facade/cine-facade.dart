import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

class CineFacade {
  final Proyector _proyector;
  final SistemaAudio _audio;
  final Reproductor _reproductor;

  // constructor
  CineFacade(
    this._proyector,
    this._audio,
    this._reproductor,
  );

  void verPelicula(String pelicula, int volumen) {
    _proyector.encender();
    _audio.encender();
    _audio.ajustarVolumen(volumen);
    _reproductor.reproducir(pelicula);
  }

  void terminarFuncion() {
    _reproductor.detener();
    _audio.apagar();
    _proyector.apagar();
  }
}
