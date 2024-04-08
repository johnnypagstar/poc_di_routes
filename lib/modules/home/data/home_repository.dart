import 'home_service.dart';

class HomeRepository {
  final HomeService _homeService;

  HomeRepository(this._homeService);

  void doSomething() {
    _homeService.doSomething();
  }
}
