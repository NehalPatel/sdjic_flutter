import 'package:flutter/material.dart';

class ToolTipsPage extends StatelessWidget {
  const ToolTipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tooltip Example'),
        ),
        body: Center(
          child: Tooltip(
            message: 'This is a tooltip',
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Press me'),
            ),
          ),
        ),
    );
  }
}
