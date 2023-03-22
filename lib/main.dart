import 'package:flutter/material.dart';
import 'package:sdjic_flutter/Screens/Section1/text_page.dart';
import 'package:sdjic_flutter/Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' : (context) => HomePage(),
        '/s1/text' : (context) => TextDemoPage(),
      },
      initialRoute: "/",
    );
  }
}