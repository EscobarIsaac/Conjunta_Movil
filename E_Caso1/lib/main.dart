import 'package:flutter/material.dart';
import 'Pantallas/punto_encuentro_screen.dart';

void main() => runApp(PuntoEncuentroApp());

class PuntoEncuentroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Punto Encuentro Vial',
      home: PuntoEncuentroScreen(),
    );
  }
}
