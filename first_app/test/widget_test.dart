import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Sample test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Text('Hello')));

    expect(find.text('Hello'), findsOneWidget);
  });
}
