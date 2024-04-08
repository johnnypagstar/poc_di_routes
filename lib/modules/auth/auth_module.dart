import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../shared/di/module.dart';
import 'data/auth_repository.dart';
import 'data/auth_service.dart';
import 'presenter/auth_page.dart';

class AuthModule implements Module {
  @override
  void provideBinds(GetIt getIt) {
    // Registra as dependências específicas do módulo de autenticação
    getIt.registerSingleton<AuthService>(AuthService());
    getIt.registerSingleton<AuthRepository>(AuthRepository());
  }

  @override
  List<GoRoute> provideRoutes() {
    // Retorna as rotas específicas do módulo de autenticação
    return [
      GoRoute(
        path: 'main',
        builder: (context, state) => const AuthPage(),
      ),
      // Adicione outras rotas do módulo de autenticação aqui
    ];
  }
}
