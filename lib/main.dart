import 'package:flutter/material.dart';
import 'package:sdjic_flutter/drawer.dart';
import 'package:sdjic_flutter/formdemo.dart';
import 'package:sdjic_flutter/textdemo.dart';
import 'package:sdjic_flutter/textfielddemo.dart';

void main() => runApp(const MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/textdemo': (_) => const TextDemo(),
        '/textfielddemo': (_) => const TextFieldDemo(),
        '/formdemo': (_) => const FormDemo(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SDJ International College'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            const HomeCard(
              icon: Icons.abc_rounded,
              title: "Test",
              navigation: "/textdemo",
              color: Colors.purple,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.grey,
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

class HomeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String navigation;
  final Color color;

  const HomeCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.navigation,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigation);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.abc,
              size: 50,
              color: Colors.white,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),
      ),
    );
  }
}
