import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {
  const MyPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) =>[
      PopupMenuItem(
        child: ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text('Cart'),
        ),
        value: 'cart',
      ),
      PopupMenuItem(
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        value: 'settings',
      ),
      PopupMenuItem(
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
        ),
        value: 'logout',
      ),
    ]);
  }
}
