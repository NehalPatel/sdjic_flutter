import 'package:flutter/material.dart';
import 'package:sdjic_flutter/components/my_drawer.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("SDJIC"),
        centerTitle: true,
        actions: const [
          MyPopupMenu()
        ],
      ),
      drawer: const MyDrawer(),
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 70, backgroundImage: AssetImage('assets/images/nehal.jpeg')),
            Text(
              'Nehal Patel',
              style: TextStyle(
                  fontFamily: 'DancingScript',
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Color(0xfff07b3f),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text(
                  '+95588 15342',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),

            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2,horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                title: Text(
                  'iamnehalpatel@gmail.com',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
