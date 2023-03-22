import 'package:flutter/material.dart';
import 'package:sdjic_flutter/Screens/Section1/button_page.dart';
import 'package:sdjic_flutter/Screens/Section1/imageslider_page.dart';
import 'package:sdjic_flutter/Screens/Section1/slider_page.dart';
import 'package:sdjic_flutter/Screens/Section1/text_page.dart';
import 'package:sdjic_flutter/Screens/Section1/textfield_page.dart';
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
        '/s1/textfield' : (context) => TextFieldPage(),
        '/s1/buttons' : (context) => ButtonPage(),
        '/s1/slider' : (context) => SliderPage(),
        '/s1/image_slider' : (context) => ImageSliderPage(),
      },
      initialRoute: "/",
    );
  }
}