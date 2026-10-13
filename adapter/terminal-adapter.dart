// Adapter: traducir la interfaz y los datos
import 'medio-pago.dart';
import 'terminal-externa.dart';

class TerminalAdapter implements MedioPago{

  final TerminalExterna terminal;

  TerminalAdapter(this.terminal);

  @override
  void pagar(double pesos){
    final totalDolares = pesos / 18.25;
    terminal.cobrar(totalDolares);
  }


}