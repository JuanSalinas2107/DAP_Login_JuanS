import 'package:flutter/material.dart';
class PantallaParte2 extends StatelessWidget {
  const PantallaParte2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pantalla principal"),
      ),
      body: const Center(
        child: Text(
          "Se inicio sesion",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
