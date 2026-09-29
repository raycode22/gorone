import 'package:flutter_test/flutter_test.dart';

import 'package:gorone/app/app.dart';

void main() {
  testWidgets('App shell renders the library placeholder', (tester) async {
    await tester.pumpWidget(const GoroneApp());

    expect(find.text('Library'), findsOneWidget);
    expect(find.text('Your library is empty'), findsOneWidget);
  });
}
