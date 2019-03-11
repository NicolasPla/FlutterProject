import 'package:flutter/material.dart';
import './backgrounds.dart';
import './background_control.dart';

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

  final List<String> _backgrounds = [];

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

  void _addBackground(String background){
    setState(() {
      _backgrounds.add(background);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[BackgroundManager State] build()');
    return Column(children : [Container(
      margin: EdgeInsets.all(10.0),
      child: BackgroundControl(_addBackground),
    ),
      Expanded(child: Backgrounds(_backgrounds))
    ],);
  }
}