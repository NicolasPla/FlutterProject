import 'package:flutter/material.dart';
import './background_manager.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: BackgroundManager()),
    );
  }
}
