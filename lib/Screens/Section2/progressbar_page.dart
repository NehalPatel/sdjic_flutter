import 'dart:async';

import 'package:flutter/material.dart';

class ProgressBarPage extends StatefulWidget {
  const ProgressBarPage({Key? key}) : super(key: key);

  @override
  State<ProgressBarPage> createState() => _ProgressBarPageState();
}

class _ProgressBarPageState extends State<ProgressBarPage> {

  bool _loading = false;
  double _progressValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Progress Bar Widget Demo"),
        ),
        body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Linear Progress Bar"),
              SizedBox(height: 10,),
              LinearProgressIndicator(
                backgroundColor: Colors.cyan,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progressValue,
              ),
              Text('${(_progressValue * 100).round()}%'),
              SizedBox(height: 10,),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _progressValue = 0;
                    _loading = true;
                  });
                  _updateProgress();
                },
                icon: Icon(Icons.download),
                label: Text('Download'),
              ),
              SizedBox(height: 10,),
              _loading ?
                CircularProgressIndicator(
                  backgroundColor: Colors.red,
                  strokeWidth: 8.0,
                ): Text("Click to download file"),
            ],
          ),
        )
      )
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}

