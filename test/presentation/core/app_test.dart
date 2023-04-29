import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_blood/presentation/core/my_app_widget.dart';

void main() {
  group('MyApp', () {
    testWidgets('renders MyAppWidget', (tester) async {
      await tester.pumpWidget(
        MyAppWidget(),
      );
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
