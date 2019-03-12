import 'package:flutter/material.dart';

import './backgrounds.dart';

class BackgroundAdministration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Background List'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            backgroundsPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Background Administration'),
      ),
    );
  }
}
