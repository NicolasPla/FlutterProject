import 'package:flutter/material.dart';
import './backgrounds.dart';

class BackgroundManager extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BackgroundManagerState();
  }
}

class _BackgroundManagerState extends State<BackgroundManager>{

  List<String> _backgrounds = ['Title A'];

  @override
  Widget build(BuildContext context) {
    return Column(children : [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        child: Text('Add Image'),
        onPressed: () {
          setState(() {
            _backgrounds.add('Title B');
          });
        },
      ),
    ),
      Backgrounds(_backgrounds)
    ],);
  }
}