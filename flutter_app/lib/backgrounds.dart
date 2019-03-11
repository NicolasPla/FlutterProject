import 'package:flutter/material.dart';

class Backgrounds extends StatelessWidget{

  final List<String> backgrounds;

  //Constructor
  Backgrounds(this.backgrounds){
    print('[Background Widet] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Background Widet] Build');

    return ListView(
      children: backgrounds
          .map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/paisaje.jpg'),
            Text(element)
          ],
        ),
      ))
          .toList(),
    );
  }

}