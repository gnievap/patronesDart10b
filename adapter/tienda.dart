
import 'medio-pago.dart';


class Tienda {

  final MedioPago medioPago;

  Tienda(this.medioPago);

  void finalizaCompra(double total) {
    // Aquí debo procesar la compra:
    // cobrar, actualizar inventario, generar proceso de envío
    medioPago.pagar(total);
  }
}
