import 'package:flutter/material.dart';

import 'shared/di/di.dart';
import 'shared/router/router.dart';

void main() {
  // Configuração do GetIt
  DependencyInjection.setup();

  // Inicialização do MyApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RouteManager _routeManager = RouteManager();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter GetIt with GoRouter',
      routerConfig: _routeManager.router,
    );
  }
}
