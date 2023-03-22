import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Nehal Patel"),
            accountEmail: Text("iamnehalpatel@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text("NP",style: TextStyle(fontSize: 40.0)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text("About"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: const Text("Contact"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
