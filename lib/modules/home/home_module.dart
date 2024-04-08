import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'presenter/home_page.dart';
import '../../shared/di/module.dart';

import 'data/home_repository.dart';
import 'data/home_service.dart';

class HomeModule implements Module {
  @override
  void provideBinds(GetIt getIt) {
    // Registra as dependências específicas do módulo home
    getIt.registerSingleton<HomeService>(HomeService());
    getIt.registerSingleton<HomeRepository>(
      HomeRepository(getIt<HomeService>()),
    );
  }

  @override
  List<GoRoute> provideRoutes() {
    return [
      GoRoute(
        path: 'main',
        builder: (context, state) => const HomePage(),
      ),
      // Adicione outras rotas do módulo home aqui
    ];
  }
}
