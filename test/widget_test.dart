import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("hello world teest", (WidgetTester Tester) async {
    await Tester.pumpWidget(const Myapp());

    expect(find.byType(Container), findsOneWidget);
    expect(find.text("Hello Dart"), findsOneWidget);
  });
}
