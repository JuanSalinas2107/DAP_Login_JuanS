import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/pantalla_parte1.dart';
import 'views/pantalla_parte2.dart';

void main() {
  runApp(const AplicacionNueva());
}

class AplicacionNueva extends StatelessWidget {
  const AplicacionNueva({super.key});

  static final GoRouter rutas = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const InicioView(),
      ),
      GoRoute(
        path: '/inicio',
        builder: (context, state) => const BienvenidaView(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: rutas,
      debugShowCheckedModeBanner: false,
    );
  }
}
