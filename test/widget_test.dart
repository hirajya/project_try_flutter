import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:GDSCxNU_FlutterProject/screens/login_screen.dart';
import 'package:GDSCxNU_FlutterProject/screens/splash_screen.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: SplashScreen(),
    ));

    // Verify that our counter starts at 0. (Note: We're verifying text from the login screen now)
    expect(find.text('Login'), findsOneWidget); // Assuming 'Login' is displayed on the home screen
    expect(find.text('Welcome Back'), findsOneWidget);

    // You can continue adding more specific widget tests for your login screen UI here.
  });
}
