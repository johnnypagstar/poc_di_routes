import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../modules/auth/auth_module.dart';
import '../../modules/home/home_module.dart';
import '../../modules/splash/splash_page.dart';
import '../di/di.dart';
import '../di/module.dart';
import '../widgets/not_found.dart';

class RouteManager {
  late final GoRouter _router;

  RouteManager() {
    _router = GoRouter(
      initialLocation: '/',
      errorBuilder: (context, state) => const NotFoundPage(),
      debugLogDiagnostics: true,
      redirect: (context, state) {
        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashPage(),
        ),
        _goRouteModule(path: '/auth', module: AuthModule()),
        _goRouteModule(path: '/home', module: HomeModule()),
      ],
    );

    // Registra os módulos do aplicativo
    final modules = [
      AuthModule(),
      HomeModule(),
      // Adicione outros módulos conforme necessário
    ];

    // Adiciona as rotas de cada módulo ao GoRouter
    for (final module in modules) {
      module.provideBinds(di); // Registra as dependências do módulo
    }
  }

  GoRoute _goRouteModule({
    required String path,
    required Module module,
  }) {
    return GoRoute(
      path: path,
      routes: module.provideRoutes(),
      builder: (_, __) => module.provideRoutes().first.builder!(_, __),
    );
  }

  RouterConfig<Object> get router => _router;
}
