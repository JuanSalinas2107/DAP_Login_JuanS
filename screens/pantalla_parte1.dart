import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class PantallaParte1 extends StatefulWidget {
  const PantallaParte1({super.key});
  @override
  State<PantallaParte1> createState() => _PantallaParte1State();
}
class _PantallaParte1State extends State<PantallaParte1> {
  final TextEditingController cajaUsuario = TextEditingController();
  final TextEditingController cajaClave = TextEditingController();
  String aviso = "";
  void revisarIngreso() {
    String usuarioIngresado = cajaUsuario.text;
    String claveIngresada = cajaClave.text;
    setState(() {
      if (usuarioIngresado.trim().isEmpty ||
          claveIngresada.trim().isEmpty) {
        aviso = "Sin completar";
      } else if (usuarioIngresado == "Juan Salinas" &&
          claveIngresada == "1111") {
        aviso = "Acceso permitido";

        Future.delayed(const Duration(seconds: 1), () {
          context.go('/segunda');
        });
      } else {
        aviso = "Usuario o clave incorrecta";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingreso"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cajaUsuario,
              decoration: const InputDecoration(
                hintText: "Usuario",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: cajaClave,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Contraseña",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: revisarIngreso,
              child: const Text("Ingresar"),
            ),
            const SizedBox(height: 18),
            Text(
              aviso,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
