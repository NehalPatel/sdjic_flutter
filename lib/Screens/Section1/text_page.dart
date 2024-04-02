import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDemoPage extends StatelessWidget {
  const TextDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Normal Text"),
              const SizedBox(height: 10,),
              const Text("Styled Text",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.yellow,
                ),
              ),
              const SizedBox(height: 10,),
              Text("Custom Font Text",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontFamily: "DancingScript",
                ),
              ),
              const SizedBox(height: 10,),
              const Text("Custom Font Text with weight",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.w700
                ),
              ),
              const Text("Please check the pubspec.yaml file to view the settings"),
              const Divider(),
              const SizedBox(height: 10,),
              Text("Text with google font plugin",
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const Text("we need to install the Google Fonts plugin using `flutter pub add google_fonts` command",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
