import 'package:flutter/material.dart';

class BasicListViewPage extends StatelessWidget {
  const BasicListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic List View"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }
}
