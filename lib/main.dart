import 'package:flutter/material.dart';
import 'package:sdjic_flutter/Screens/Section1/button_page.dart';
import 'package:sdjic_flutter/Screens/Section1/imageslider_page.dart';
import 'package:sdjic_flutter/Screens/Section1/slider_page.dart';
import 'package:sdjic_flutter/Screens/Section1/text_page.dart';
import 'package:sdjic_flutter/Screens/Section1/textfield_page.dart';
import 'package:sdjic_flutter/Screens/Section2/basic_listview_page.dart';
import 'package:sdjic_flutter/Screens/Section2/checkbox_page.dart';
import 'package:sdjic_flutter/Screens/Section2/grid_listview_page.dart';
import 'package:sdjic_flutter/Screens/Section2/horizontal_listview_page.dart';
import 'package:sdjic_flutter/Screens/Section2/listview_page.dart';
import 'package:sdjic_flutter/Screens/Section2/long_listview_page.dart';
import 'package:sdjic_flutter/Screens/Section2/progressbar_page.dart';
import 'package:sdjic_flutter/Screens/Section2/radiobutton_page.dart';
import 'package:sdjic_flutter/Screens/Section3/stack_page.dart';
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
        '/s2/checkbox' : (context) => CheckboxPage(),
        '/s2/radio' : (context) => RadioButtonPage(),
        '/s2/progress' : (context) => ProgressBarPage(),
        '/s2/listview' : (context) => ListViewPage(),
        '/s2/listview/basic' : (context) => BasicListViewPage(),
        '/s2/listview/long' : (context) => LongListViewPage(),
        '/s2/listview/grid' : (context) => GridListViewPage(),
        '/s2/listview/horizontal' : (context) => HorizontalListViewPage(),
        '/s3/stack' : (context) => StackPage(),
      },
      initialRoute: "/",
    );
  }
}