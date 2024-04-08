import 'package:flutter/material.dart';

import '../../shared/helper/navigator_helper.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      NavigatorHelper.go(context, '/auth');
    });

    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
