import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdjic_flutter/components/my_drawer.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class TextDemoPage extends StatelessWidget {
  const TextDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Normal Text"),
              SizedBox(height: 10,),
              Text("Styled Text",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.yellow,
                ),
              ),
              SizedBox(height: 10,),
              Text("Custom Font Text",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontFamily: "DancingScript",
                ),
              ),
              SizedBox(height: 10,),
              Text("Custom Font Text with weight",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.w700
                ),
              ),
              Text("Please check the pubspec.yaml file to view the settings"),
              Divider(),
              SizedBox(height: 10,),
              Text("Text with google font plugin",
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text("we need to install the Google Fonts plugin using `flutter pub add google_fonts` command",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
