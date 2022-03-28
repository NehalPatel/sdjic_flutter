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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Form Demo"),
              onPressed: () => {},
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
