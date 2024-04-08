import 'package:flutter/material.dart';
import '../data/home_repository.dart';
import '../../../shared/di/di.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeRepository = di<HomeRepository>();

  @override
  void initState() {
    super.initState();
    _homeRepository.doSomething();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
