import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda {
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizaCompra(double total, String medio) {
    if (medio == 'servicioPago') {
      servicioPago.pagar(total);
    } else if (medio == 'terminalExterna') {
      // La tienda debe convertir pesos a dólares antes de llamar al servicio externo
      final totalDolares = total / 18.25; // Supongamos que 1 dólar = 18 pesos
      terminalExterna.cobrar(totalDolares);
    } else {
      throw ArgumentError('Medio de pago no soportado: $medio');
    }
  }
}
