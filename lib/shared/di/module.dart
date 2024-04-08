import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

abstract class Module {
  void provideBinds(GetIt getIt);
  List<GoRoute> provideRoutes();
}
