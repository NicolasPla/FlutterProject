import 'package:flutter/material.dart';

class Backgrounds extends StatelessWidget{

  final List<String> products;

  //Constructor
  Backgrounds(this.products);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: products
          .map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/paisaje.jpg'),
            Text('Test')
          ],
        ),
      ))
          .toList(),
    );
  }

}