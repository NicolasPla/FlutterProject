import 'package:flutter/material.dart';

class Backgrounds extends StatelessWidget{

  final List<String> backgrounds;

  //Constructor
  Backgrounds(this.backgrounds){
    print('[Background Widet] Constructor');
  }

  Widget _buildBackgroundItem(BuildContext context, int index){
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/paisaje.jpg'),
          Text(backgrounds[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Background Widet] Build');

    return backgrounds.length > 0 ?  ListView.builder(
      itemBuilder: _buildBackgroundItem,
      itemCount: backgrounds.length,

    ) : Center(child: Text('No background found, Please add some'),);
  }

}