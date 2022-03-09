import 'package:flutter/material.dart';
import 'package:sdjic_flutter/buttondemo.dart';
import 'package:sdjic_flutter/textdemo.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SDJ International College'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('We have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
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
                Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => TextDemo())
                );
              },
            ),
            const ListTile(
              title: Text("TextField"),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: const Text("Buttons"),
              leading: const Icon(Icons.local_offer),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ButtonDemo())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
