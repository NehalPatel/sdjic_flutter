import 'package:flutter/material.dart';
import 'package:sdjic_flutter/buttondemo.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: const Text("Text"),
            leading: const Icon(Icons.inbox),
            onTap: () {
              Navigator.pushNamed(context, '/textdemo');
            },
          ),
          ListTile(
            title: const Text("TextField"),
            leading: const Icon(Icons.people),
            onTap: () {
              Navigator.pushNamed(context, '/textfielddemo');
            },
          ),
          ListTile(
            title: const Text("Buttons"),
            leading: const Icon(Icons.local_offer),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => const ButtonDemo()));
            },
          ),
          ListTile(
            title: const Text("Form Demo"),
            leading: const Icon(Icons.add_alert),
            onTap: () {
              Navigator.pushNamed(context, '/formdemo');
            },
          )
        ],
      ),
    );
  }
}
