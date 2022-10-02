
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webtest/cam_screen.dart';
import 'package:webtest/home_screen.dart';

import 'package:webtest/main.dart';

void main() {
  group('Camera Screen tests', () {

    testWidgets('Tests if the Routing at the Buttons work', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());
      await tester.tap(find.byKey(const Key('CameraButton')));
      await tester.pumpAndSettle();

      //should find the Camera Screen widget
      expect(find.byKey(const Key('CamScreen')), findsOneWidget);
      //should find 2 Buttons
      expect(find.byKey(const Key('HomeButton')), findsOneWidget);
      expect(find.byKey(const Key('CameraButton')), findsOneWidget);

      await tester.tap(find.byKey(const Key('HomeButton')));
      await tester.pumpAndSettle();
      //should find the HomeScreen again
      expect(find.byKey(const Key('CamScreen')), findsNothing);
      //should find 2 Buttons
      expect(find.byKey(const Key('HomeButton')), findsOneWidget);
      expect(find.byKey(const Key('CameraButton')), findsOneWidget);
    });
  });

}
