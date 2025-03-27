import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:template/widgets/common/pagination_controller_widget.dart';

import '../test_extensions.dart';

void main() {
  testWidgets('Hides widget if maxIndex is 1', (WidgetTester tester) async {
    await tester.pumpAppWidget(
      MaterialApp(
        home: PaginationControllerWidget(
          currentIndex: 1,
          maxIndex: 1,
          nextFunction: () {},
          previousFunction: () {},
        ),
      ),
    );

    expect(find.byType(PaginationControllerWidget), findsOneWidget);
    expect(find.byType(Row), findsNothing);
    expect(find.text('Previous'), findsNothing);
    expect(find.text('Next'), findsNothing);
  });

  testWidgets('Shows only Next button if currentIndex is 1',
      (WidgetTester tester) async {
    var nextTapped = false;
    await tester.pumpAppWidget(
      PaginationControllerWidget(
        currentIndex: 1,
        maxIndex: 3,
        nextFunction: () => nextTapped = true,
        previousFunction: () {},
      ),
    );

    expect(find.text('Previous'), findsNothing);
    expect(find.text('Next'), findsOneWidget);

    await tester.tap(find.text('Next'));
    expect(nextTapped, isTrue);
  });

  testWidgets('Shows both buttons when in between pages',
      (WidgetTester tester) async {
    var nextTapped = false;
    var previousTapped = false;

    await tester.pumpAppWidget(
      MaterialApp(
        home: PaginationControllerWidget(
          currentIndex: 2,
          maxIndex: 3,
          nextFunction: () => nextTapped = true,
          previousFunction: () => previousTapped = true,
        ),
      ),
    );

    expect(find.text('Previous'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);

    await tester.tap(find.text('Previous'));
    expect(previousTapped, isTrue);

    await tester.tap(find.text('Next'));
    expect(nextTapped, isTrue);
  });

  testWidgets('Shows only Previous button if currentIndex equals maxIndex',
      (WidgetTester tester) async {
    var previousTapped = false;

    await tester.pumpAppWidget(
      MaterialApp(
        home: PaginationControllerWidget(
          currentIndex: 3,
          maxIndex: 3,
          nextFunction: () {},
          previousFunction: () => previousTapped = true,
        ),
      ),
    );

    expect(find.text('Previous'), findsOneWidget);
    expect(find.text('Next'), findsNothing);

    await tester.tap(find.text('Previous'));
    expect(previousTapped, isTrue);
  });
}
