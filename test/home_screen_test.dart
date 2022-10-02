
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webtest/cam_screen.dart';
import 'package:webtest/home_screen.dart';

import 'package:webtest/main.dart';

void main() {
  testWidgets('Tests if Homescreen builds', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());


    // should find the HomescreenWidget
    expect(find.byKey(const Key('HomeScreen')), findsOneWidget);
    //should find 2 Buttons
    expect(find.byKey(const Key('HomeButton')), findsOneWidget);
    expect(find.byKey(const Key('CameraButton')), findsOneWidget);


  });
}
