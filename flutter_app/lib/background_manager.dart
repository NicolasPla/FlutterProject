import 'package:flutter/material.dart';
import './backgrounds.dart';

class BackgroundManager extends StatefulWidget{

  String startingBackground;

  BackgroundManager({this.startingBackground = 'Default background'});

  @override
  State<StatefulWidget> createState() {
    print('[BackgroundManager Widet] createState()');

    return _BackgroundManagerState();
  }
}

class _BackgroundManagerState extends State<BackgroundManager>{

  List<String> _backgrounds = [];

  @override
  void initState() {
    print('[BackgroundManager State] initState()');

    _backgrounds.add(widget.startingBackground);
    super.initState();
  }

  @override
  void didUpdateWidget(BackgroundManager oldWidget) {
    print('[BackgroundManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[BackgroundManager State] build()');
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