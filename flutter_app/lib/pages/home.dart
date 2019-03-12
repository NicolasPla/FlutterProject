import 'package:flutter/material.dart';
import '../background_manager.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
          title: Text('Background List'),
        ),
        body: BackgroundManager());
  }
}