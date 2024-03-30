
import 'package:flutter/material.dart';
import 'package:sdjic_flutter/Screens/Section1/mydropdown_button.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Widget Demo"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                const Text("Text Button"),
                TextButton(
                  child: const Text('Text Button'),
                  onPressed: () {},
                ),
                const SizedBox(height: 10,),
                const Divider(color: Colors.red),
                const Text("Text Button with Style"),
                TextButton(
                  child: const Text('Text Button',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 10,),
                const Divider(color: Colors.red),
                const Text("Elevated Button"),
                ElevatedButton(
                    onPressed: (){},
                    child: const Text("Elevated Button")
                ),
                const SizedBox(height: 10,),
                const Divider(color: Colors.red),
                const Text("Outlined Button"),
                OutlinedButton(
                    onPressed: (){},
                    child: const Text("Outlined Button")
                ),
                const SizedBox(height: 10,),
                const Divider(color: Colors.red),
                const Text("Icon Button"),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.logout)
                ),
                const Divider(color: Colors.red),
                const Text("Elevated Button with Icon"),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                  label: const Text('Send Email'),
                ),
                const Divider(color: Colors.red),
                const Text("Dropdown Button"),
                const MyDropdownButton(), //visit mydropdown_button.dart file
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
