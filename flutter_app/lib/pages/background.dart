import 'package:flutter/material.dart';
import 'dart:async';

class BackgroundPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  BackgroundPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()
      {
        print('Back button pressed');
        Navigator.pop(context, false);
        return Future.value(true);
        },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(title),
                ),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                )
              ],
            ),
          )),
    );
  }
}
