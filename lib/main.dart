import 'package:flutter/material.dart';


import 'cam_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webtest',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)>{
        '/':(context) => const HomeScreen(title: 'WebTestHomePage', key: Key('HomeScreen')),
        '/cam-screen': (context)=> const CamScreen(title: 'WebTestCamScreen',key: Key('CamScreen')),
      },
    );
  }
}
