import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class NavigatorHelper {
  static void go(BuildContext context, String name) => context.go(name);

  static void push(BuildContext context, String name) => context.push(name);
}
