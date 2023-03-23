import 'package:flutter/material.dart';

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Camera', icon: Icons.camera_alt),
  Choice(title: 'Setting', icon: Icons.settings),
  Choice(title: 'Album', icon: Icons.photo_album),
  Choice(title: 'WiFi', icon: Icons.wifi),
  Choice(title: 'GPS', icon: Icons.gps_fixed),
];

class GridListViewPage extends StatelessWidget {
  const GridListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid List View"),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(
                choices.length,
                (index) => Center(
                  child:  Card(
                      color: Colors.lightGreenAccent,
                      child: Center(child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Icon(choices[index].icon, size:50.0)),
                            Text(choices[index].title, style: TextStyle(fontSize: 30),),
                          ]
                        ),
                      )
                  ),
                ),
            ),
        ),
      ),
    );
  }
}
