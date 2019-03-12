import 'package:flutter/material.dart';
import './pages/background.dart';

class Backgrounds extends StatelessWidget {
  final List<Map<String, String>> backgrounds;
  final Function deleteBackground;

  //Constructor
  Backgrounds(this.backgrounds, {this.deleteBackground}) {
    print('[Background Widet] Constructor');
  }

  Widget _buildBackgroundItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(backgrounds[index]['image']),
          Text(backgrounds[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BackgroundPage(
                            backgrounds[index]['title'],
                            backgrounds[index]['image'])
                    )
                ).then((bool value) {
                  if(value)
                    {
                      deleteBackground(index);
                    }
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBackgroundList() {
    Widget backgroundCard = Center(
      child: Text('No background found, Please add some'),
    );
    if (backgrounds.length > 0) {
      backgroundCard = ListView.builder(
        itemBuilder: _buildBackgroundItem,
        itemCount: backgrounds.length,
      );
    }
    return backgroundCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Background Widet] Build');
    return _buildBackgroundList();
  }
}
