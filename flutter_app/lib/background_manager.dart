import 'package:flutter/material.dart';
import './backgrounds.dart';
import './background_control.dart';

class BackgroundManager extends StatefulWidget{

  final Map<String, String> startingBackground;

  BackgroundManager({this.startingBackground});

  @override
  State<StatefulWidget> createState() {
    print('[BackgroundManager Widet] createState()');

    return _BackgroundManagerState();
  }
}

class _BackgroundManagerState extends State<BackgroundManager>{

  final List<Map<String, String>> _backgrounds = [];

  @override
  void initState() {
    print('[BackgroundManager State] initState()');

    if(widget.startingBackground != null)
      {
        _backgrounds.add(widget.startingBackground);
      }

    super.initState();
  }

  @override
  void didUpdateWidget(BackgroundManager oldWidget) {
    print('[BackgroundManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addBackground(Map<String, String> background){
    setState(() {
      _backgrounds.add(background);
    });
  }

  void _deleteBackground(int index)
  {
    setState(() {
      _backgrounds.removeAt(index);
    });

  }

  @override
  Widget build(BuildContext context) {
    print('[BackgroundManager State] build()');
    return Column(children : [Container(
      margin: EdgeInsets.all(10.0),
      child: BackgroundControl(_addBackground),
    ),
      Expanded(child: Backgrounds(_backgrounds, deleteBackground: _deleteBackground))
    ],);
  }
}