import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/inicio_view.dart';
import 'views/bienvenida_view.dart';

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
