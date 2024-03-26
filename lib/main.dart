import 'package:flutter/material.dart';
import 'package:practicapts/login.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breaking News',
      theme: ThemeData(
        fontFamily: "Oswald",
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
