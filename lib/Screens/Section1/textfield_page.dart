
import 'package:flutter/material.dart';
import 'package:sdjic_flutter/components/my_drawer.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget Demo"),
        actions: const [
          MyPopupMenu()
        ],
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Username"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your valid email address"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Input with prefix icon",
                prefixIcon: Icon(Icons.account_box)
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Input with suffix icon",
                  suffixIcon: Icon(Icons.monetization_on)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
