import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:blindkey_web/main.dart';

void main() {
  testWidgets('BlindKey app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BlindKeyApp());

    // Verify that our title is present.
    expect(find.text('BlindKey'), findsOneWidget);
    expect(find.byIcon(Icons.shield), findsOneWidget);
  });
}
