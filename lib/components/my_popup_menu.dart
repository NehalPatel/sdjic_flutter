import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {
  const MyPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) =>[
      const PopupMenuItem(
        value: 'cart',
        child: ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text('Cart'),
        ),
      ),
      const PopupMenuItem(
        value: 'settings',
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ),
      const PopupMenuItem(
        value: 'logout',
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
        ),
      ),
    ]);
  }
}
