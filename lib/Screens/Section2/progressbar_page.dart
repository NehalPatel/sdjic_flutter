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
          title: const Text("Progress Bar Widget Demo"),
        ),
        body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Linear Progress Bar"),
              const SizedBox(height: 10,),
              LinearProgressIndicator(
                backgroundColor: Colors.cyan,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progressValue,
              ),
              Text('${(_progressValue * 100).round()}%'),
              const SizedBox(height: 10,),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _progressValue = 0;
                    _loading = true;
                  });
                  _updateProgress();
                },
                icon: const Icon(Icons.download),
                label: const Text('Download'),
              ),
              const SizedBox(height: 10,),
              _loading ?
              const CircularProgressIndicator(
                  backgroundColor: Colors.red,
                  strokeWidth: 8.0,
                ): const Text("Click to download file"),
            ],
          ),
        )
      )
    );
  }

  void _updateProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
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

