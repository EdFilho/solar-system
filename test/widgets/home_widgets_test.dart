import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solar_system/home/home_widget.dart';
import 'package:solar_system/home/solar_system/summary_card.dart';

void main() {
  testWidgets('Should display a raised buttom to add a new todo when the HomePage is opended',
    (WidgetTester tester) async {
    await tester.pumpWidget( HomeWidget());
    final summaryCard = find.byType(SummaryCard);
    expect(summaryCard, findsWidgets);
  });
}