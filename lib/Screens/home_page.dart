import 'package:flutter/material.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("SDJIC"),
        centerTitle: true,
        actions: [
          MyPopupMenu()
        ],
      ),
      body: Container(
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  "assets/images/SDJIC.png", width: 300,
              ),
            ),
            SizedBox(height: 10),
            Text("SDJIC - Flutter", style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.abc),
                        title: Text("Text Widget"),
                        subtitle: Text("Display all text widget option"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.text_fields),
                        title: Text("TextField Widget"),
                        subtitle: Text("Display all TextField widget option"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.smart_button),
                        title: Text("Button Widget"),
                        subtitle: Text("Display all Button widget option"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.slideshow_rounded),
                        title: Text("Slider Widget"),
                        subtitle: Text("Display all Slider widget option"),
                      ),
                    ),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.slideshow_rounded),
                        title: Text("Checkbox Widget"),
                        subtitle: Text("Display all Checkbox Button widget option"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.slideshow_rounded),
                        title: Text("Radio Button Widget"),
                        subtitle: Text("Display all Radio Button widget option"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('clicked');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.slideshow_rounded),
                        title: Text("Checkbox Widget"),
                        subtitle: Text("Display all Checkbox widget option"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
