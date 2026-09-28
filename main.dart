import 'configuracion.dart';

void main() {
  var pantallaInicio = Configuracion();
  var pantallaPerfil = Configuracion();

  print('Idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('Idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');

  pantallaInicio.idioma = 'en';

  print('Idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('Idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');

  // Comprobar si son instancias iguales
  print(identical(pantallaInicio, pantallaPerfil)); // false
}
