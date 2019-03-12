import 'package:flutter/material.dart';
import './pages/auth.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: AuthPage(),
    );
  }
}
