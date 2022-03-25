import 'package:flutter/material.dart';
import 'package:sdjic_flutter/buttondemo.dart';
import 'package:sdjic_flutter/formdemo.dart';
import 'package:sdjic_flutter/textdemo.dart';
import 'package:sdjic_flutter/textfielddemo.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/textdemo' : (_) => TextDemo(),
        '/textfielddemo' : (_) => TextFieldDemo(),
        '/formdemo' : (_) => FormDemo(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SDJ International College SYBCA'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: const Text("Form Demo"),
                onPressed: () => {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("SYBCA-D"),
              accountEmail: Text("sdjic@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text("SDJIC"),
              ),
            ),
            const ListTile(
              title: Text("Home"),
              leading: Icon(Icons.mail),
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Text"),
              leading: Icon(Icons.inbox),
              onTap: () {
                Navigator.pushNamed(context, '/textdemo');
              },
            ),
            ListTile(
              title: Text("TextField"),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.pushNamed(context, '/textfielddemo');
              },
            ),
            ListTile(
              title: const Text("Buttons"),
              leading: const Icon(Icons.local_offer),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ButtonDemo())
                );
              },
            ),
            ListTile(
              title: const Text("Form Demo"),
              leading: const Icon(Icons.add_alert),
              onTap: (){
                Navigator.pushNamed(context, '/formdemo');
              },
            )
          ],
        ),
      ),
    );
  }
}
