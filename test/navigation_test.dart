import 'package:flutter_test/flutter_test.dart';

import 'package:gorone/app/app.dart';
import 'package:gorone/app/router.dart';

void main() {
  setUp(() {
    // The router is a singleton; reset it so tests are order-independent.
    appRouter.go('/library');
  });

  testWidgets('tab routes render their screens', (tester) async {
    await tester.pumpWidget(const GoroneApp());
    await tester.pumpAndSettle();

    for (final entry in {
      '/search': 'Search',
      '/downloads': 'Downloads',
      '/settings': 'Settings',
    }.entries) {
      appRouter.go(entry.key);
      await tester.pumpAndSettle();
      expect(find.text(entry.value), findsOneWidget);
    }
  });

  testWidgets('path parameters reach the screen', (tester) async {
    await tester.pumpWidget(const GoroneApp());
    await tester.pumpAndSettle();

    appRouter.go('/manga/42');
    await tester.pumpAndSettle();
    expect(find.textContaining('42'), findsOneWidget);
  });

  testWidgets('push stacks; back returns to library', (tester) async {
    await tester.pumpWidget(const GoroneApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Browse sources'));
    await tester.pumpAndSettle();
    expect(find.text('Search'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Your library is empty'), findsOneWidget);
  });
}
