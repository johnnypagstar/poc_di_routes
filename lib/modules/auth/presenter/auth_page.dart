import 'package:flutter/material.dart';

import '../../../shared/helper/navigator_helper.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Auth Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NavigatorHelper.push(context, '/home');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
