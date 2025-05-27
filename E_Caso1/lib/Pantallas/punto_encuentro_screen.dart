import 'package:flutter/material.dart';

class PuntoEncuentroScreen extends StatelessWidget {
  final double posicionA = 70;
  final double posicionB = 150;

  @override
  Widget build(BuildContext context) {
    double anchoPantalla = MediaQuery.of(context).size.width;
    double puntoEncuentro = (posicionA + posicionB) / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Punto Encuentro Vial'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              width: constraints.maxWidth < 600 ? double.infinity : 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, // Alinear textos
                children: [
                  Row(
                    children: [
                      Icon(Icons.directions_car, color: Colors.red, size: anchoPantalla < 600 ? 24 : 36),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vehículo A",
                            style: TextStyle(fontSize: anchoPantalla < 600 ? 16 : 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Desde: Aguascalientes → Zacatecas",
                            style: TextStyle(fontSize: anchoPantalla < 600 ? 14 : 18),
                          ),
                          Text(
                            "Posición inicial: ${posicionA.toStringAsFixed(1)} km",
                            style: TextStyle(fontSize: anchoPantalla < 600 ? 14 : 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.directions_car, color: Colors.blue, size: anchoPantalla < 600 ? 24 : 36),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vehículo B",
                            style: TextStyle(fontSize: anchoPantalla < 600 ? 16 : 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Desde: Zacatecas → Aguascalientes",
                            style: TextStyle(fontSize: anchoPantalla < 600 ? 14 : 18),
                          ),
                          Text(
                            "Posición inicial: ${posicionB.toStringAsFixed(1)} km",
                            style: TextStyle(fontSize: anchoPantalla < 600 ? 14 : 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "El punto de encuentro es en el km:",
                          style: TextStyle(fontSize: anchoPantalla < 600 ? 18 : 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${puntoEncuentro.toStringAsFixed(1)} km",
                          style: TextStyle(fontSize: anchoPantalla < 600 ? 24 : 36, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
