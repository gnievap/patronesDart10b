import 'servicio-pago.dart';
import 'terminal-adapter.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tiendaConServicio = Tienda(ServicioPago());

  final tiendaConTerminal = Tienda(TerminalAdapter(TerminalExterna()));

  tiendaConServicio.finalizarCompra(158.50); // pesos
  tiendaConTerminal.finalizarCompra(250.50); // dólares

  // La tienda ya no mezcla su tarea de finalizar la compra
  // con la tarea de convertir pesos a dólares,
  // pero ahora tenemos dos instancias de tienda
}
