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
import 'package:sdjic_flutter/Screens/Section3/alert_dialog_page.dart';
import 'package:sdjic_flutter/Screens/Section3/form_page.dart';
import 'package:sdjic_flutter/Screens/Section3/stack_page.dart';
import 'package:sdjic_flutter/Screens/Section3/tooltips_page.dart';
import 'package:sdjic_flutter/Screens/Section4/chart_page.dart';
import 'package:sdjic_flutter/Screens/Section4/flutter_form_page.dart';
import 'package:sdjic_flutter/Screens/Section4/switch_page.dart';
import 'package:sdjic_flutter/Screens/Section4/toast_page.dart';
import 'package:sdjic_flutter/Screens/home_page.dart';

import 'Screens/about_page.dart';

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
        '/' : (context) => const HomePage(),
        '/about' : (context) => const AboutPage(),
        '/s1/text' : (context) => const TextDemoPage(),
        '/s1/textfield' : (context) => const TextFieldPage(),
        '/s1/buttons' : (context) => const ButtonPage(),
        '/s1/slider' : (context) => const SliderPage(),
        '/s1/image_slider' : (context) => ImageSliderPage(),
        '/s2/checkbox' : (context) => const CheckboxPage(),
        '/s2/radio' : (context) => const RadioButtonPage(),
        '/s2/progress' : (context) => const ProgressBarPage(),
        '/s2/listview' : (context) => const ListViewPage(),
        '/s2/listview/basic' : (context) => const BasicListViewPage(),
        '/s2/listview/long' : (context) => LongListViewPage(),
        '/s2/listview/grid' : (context) => const GridListViewPage(),
        '/s2/listview/horizontal' : (context) => const HorizontalListViewPage(),
        '/s3/stack' : (context) => const StackPage(),
        '/s3/form' : (context) => const FormPage(),
        '/s3/alertdialog' : (context) => AlertDialogPage(),
        '/s3/tooltips' : (context) => const ToolTipsPage(),
        '/s4/toast' : (context) => const ToastPage(),
        '/s4/switch' : (context) => const SwitchPage(),
      },
      initialRoute: "/",
    );
  }
}