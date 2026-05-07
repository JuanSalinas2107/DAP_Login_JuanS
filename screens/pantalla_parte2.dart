import 'package:flutter/material.dart';

class PantallaParte2 extends StatelessWidget {
  const PantallaParte2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Principal"),
      ),
      body: const Center(
        child: Text(
          "Sesión iniciada correctamente",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
