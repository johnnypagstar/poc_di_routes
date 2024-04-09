import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poc_di_routes/shared/di/module.dart';

class TestModuleMock extends Mock implements Module {}

void main() {
  group('Module | ', () {
    test('Routes ', () {
      final module = TestModuleMock();
      when(() => module.provideRoutes()).thenReturn([]);

      final routes = module.provideRoutes();

      expect(routes, isA<List<GoRoute>>());
    });
  });
}
