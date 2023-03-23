
import 'package:flutter/material.dart';
import 'package:sdjic_flutter/Screens/Section1/mydropdown_button.dart';
import 'package:sdjic_flutter/components/my_drawer.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Widget Demo"),
        actions: const [
          MyPopupMenu()
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text("Text Button"),
                TextButton(
                  child: Text('Text Button'),
                  onPressed: () {},
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.red),
                Text("Text Button with Style"),
                TextButton(
                  child: Text('Text Button',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.red),
                Text("Elevated Button"),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Elevated Button")
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.red),
                Text("Outlined Button"),
                OutlinedButton(
                    onPressed: (){},
                    child: Text("Outlined Button")
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.red),
                Text("Icon Button"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.logout)
                ),
                Divider(color: Colors.red),
                Text("Elevated Button with Icon"),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.email),
                  label: Text('Send Email'),
                ),
                Divider(color: Colors.red),
                Text("Dropdown Button"),
                MyDropdownButton(), //visit mydropdown_button.dart file
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
