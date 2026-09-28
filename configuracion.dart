// Constructor con Singleton
class Configuracion {
  // Constructor privado
  // No recibe parámetros, y no puede ser llamado desde fuera de la clase
  Configuracion._();

  // Instancia única de la clase
  static final Configuracion _instancia = Configuracion._();

  // Método factory que devuelve la instancia única
  // Un constructor no tiene que crear una nueva instancia
  factory Configuracion() => _instancia;

  String idioma = 'es'; // Valor por defecto
}
