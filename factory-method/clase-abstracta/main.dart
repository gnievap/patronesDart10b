import 'triangulo.dart';

void main() {
  // No se puede instanciar de una clase abstracta o interfaz
  //FiguraGeometrica unaFigura = FiguraGeometrica();

  Triangulo unTriangulo = Triangulo(15.8, 27.3);

  unTriangulo.obtenerArea();
  print('Área del triangulo: ${unTriangulo.area} ');
}
