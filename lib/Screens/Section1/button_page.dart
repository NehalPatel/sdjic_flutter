
import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextButton(
                child: Text('Text Button'),
                onPressed: () {},
              ),
              SizedBox(height: 10,),
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
              // DropdownButtonHideUnderline(
              //     child: DropdownButton(
              //       items: [
              //
              //       ],
              //     ),
              // ),

            ],
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
