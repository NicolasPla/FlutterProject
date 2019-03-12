import 'package:flutter/material.dart';

class BackgroundControl extends StatelessWidget{

  final Function addBackground;

  BackgroundControl(this.addBackground);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Add Image'),
      onPressed: () {
        addBackground({'title': 'TitleA', 'image': 'assets/paisaje.jpg'});
      },
    );
  }
}