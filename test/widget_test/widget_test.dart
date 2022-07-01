import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';

void main() {
  testWidgets("For testing the Home screen title", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Calculator(),
    ));
    Finder title = find.text("Calculator");
    expect(title, findsOneWidget);
  });

  testWidgets("For Testing  Addition", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Calculator(),
    ));

    Finder firstNumber = find.byKey(const ValueKey('firstNumber'));

    await tester.enterText(firstNumber, '10');

    Finder secondNumber = find.byKey(const ValueKey('secondNumber'));

    await tester.enterText(secondNumber, '20');

    Finder addBtn = find.byKey(const ValueKey('addBtn'));

    await tester.tap(addBtn);

    await tester.pump();

    expect(find.text('Result:30.0'), findsOneWidget);
  });
}
