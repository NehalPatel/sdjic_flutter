import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.green,
            height: 150,
            width: 150,
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
