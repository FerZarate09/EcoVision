import 'dart:io';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String classification; // El resultado (orgánico, inorgánico, no reciclable)
  final String imagePath; // La ruta de la imagen que se tomó

  const ResultScreen({
    Key? key,
    required this.classification,
    required this.imagePath,
  }) : super(key: key);

  // Método que devuelve color e ícono según el tipo de residuo
  Map<String, dynamic> getResultStyle() {
    switch (classification.toLowerCase()) {
      case 'orgánico':
      case 'organico':
        return {
          'color': Colors.green,
          'icon': Icons.eco,
          'message': 'Residuo Orgánico Detectado 🌿',
        };
      case 'inorgánico':
      case 'inorganico':
        return {
          'color': Colors.blue,
          'icon': Icons.recycling,
          'message': 'Residuo Inorgánico Detectado ♻️',
        };
      default:
        return {
          'color': Colors.grey[800],
          'icon': Icons.delete_forever,
          'message': 'Residuo No Reciclable 🚯',
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    final style = getResultStyle();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Resultado de Clasificación"),
        backgroundColor: style['color'],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen tomada
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.file(
                File(imagePath),
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),

            // Ícono y texto del resultado
            Icon(
              style['icon'],
              color: style['color'],
              size: 100,
            ),
            const SizedBox(height: 20),

            Text(
              style['message'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: style['color'],
              ),
            ),
            const SizedBox(height: 40),

            // Botón para regresar a la cámara
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Tomar otra foto"),
              style: ElevatedButton.styleFrom(
                backgroundColor: style['color'],
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
