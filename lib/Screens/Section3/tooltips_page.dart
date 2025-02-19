import 'package:flutter/material.dart';

class ToolTipsPage extends StatelessWidget {
  const ToolTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tooltip Example'),
        ),
        body: Center(
          child: Tooltip(
            message: 'This is a tooltip',
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Press me'),
            ),
          ),
        ),
    );
  }
}
