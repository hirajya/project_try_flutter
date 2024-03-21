import 'package:flutter/material.dart';
import 'package:project_try_flutter/screens/login_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
