import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/pantalla_parte1.dart';
import 'views/pantalla_parte2.dart';
void main() {
  runApp(const SistemaNuevo());
}
class SistemaNuevo extends StatelessWidget {
  const SistemaNuevo({super.key});
  static final GoRouter sistemaRutas = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PantallaParte1(),
      ),
      GoRoute(
        path: '/segunda',
        builder: (context, state) => const PantallaParte2(),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: sistemaRutas,
      debugShowCheckedModeBanner: false,
    );
  }
}
