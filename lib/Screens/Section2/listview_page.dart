import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Widget Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("List View Examples", style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/s2/listview/basic");
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.list),
                  title: Text("Basic List View"),
                  subtitle: Text("Display Basic List View"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/s2/listview/long");
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.list_alt),
                  title: Text("Long List View"),
                  subtitle: Text("Display Long List View"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/s2/listview/grid");
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.list_alt_outlined),
                  title: Text("Grid List View"),
                  subtitle: Text("Display Grid List View"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/s2/listview/horizontal");
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.list_alt_rounded),
                  title: Text("Horizontal List View"),
                  subtitle: Text("Display Horizontal List View"),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
