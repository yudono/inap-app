import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/detailpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inap App',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/detail': (context) => DetailPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
