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
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text("About"),
            onTap: () {
              Navigator.pushNamed(context, "/about");
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
