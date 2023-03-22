import 'package:flutter/material.dart';
import 'package:sdjic_flutter/components/my_drawer.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SDJIC"),
        centerTitle: true,
        actions: const [
          MyPopupMenu()
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
              const SizedBox(height: 10),
              const Text("SDJIC - Flutter", style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text("5.1", style: TextStyle(fontSize: 18),),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/s1/text");
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
                    Text("5.2", style: TextStyle(fontSize: 18),),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.check_box),
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
                          leading: Icon(Icons.radio_button_checked),
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
                          leading: Icon(Icons.cached),
                          title: Text("Progress Bar Widget"),
                          subtitle: Text("Display Progress Bar widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.list),
                          title: Text("List Widget"),
                          subtitle: Text("Display List widget option"),
                        ),
                      ),
                    ),
                    Text("5.3", style: TextStyle(fontSize: 18),),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.stacked_bar_chart_rounded),
                          title: Text("Stack Widget"),
                          subtitle: Text("Display Stack widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.document_scanner),
                          title: Text("Form Widget"),
                          subtitle: Text("Display Form widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.add_alert),
                          title: Text("AlertDialog Widget"),
                          subtitle: Text("Display AlertDialog widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.tips_and_updates),
                          title: Text("Tooltip Widget"),
                          subtitle: Text("Display Tooltip widget option"),
                        ),
                      ),
                    ),
                    Text("5.4", style: TextStyle(fontSize: 18),),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.message),
                          title: Text("Toast Widget"),
                          subtitle: Text("Display Toast widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.toggle_on),
                          title: Text("Switch Widget"),
                          subtitle: Text("Display Switch widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.bar_chart),
                          title: Text("Chart Widget"),
                          subtitle: Text("Display Chart widget option"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.document_scanner_outlined),
                          title: Text("Flutter Form Widget"),
                          subtitle: Text("Display Flutter Form widget option"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
