import 'servicio-pago.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tienda = Tienda(ServicioPago(), TerminalExterna());

  tienda.finalizaCompra(100, 'servicioPago');
  tienda.finalizaCompra(100, 'terminalExterna');

  // La tienda mezcla su tarea de finalizar la compra
  // con la tarea de convertir pesos a dólares, lo cual no es ideal
}
