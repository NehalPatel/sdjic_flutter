import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatelessWidget {
  const ToastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showToast();
          },
          child: const Text("Simple Toast Message"),
        ),
      ),
    );
  }

  void showToast(){
    Fluttertoast.showToast(
        msg: "Simple Toast Message",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red
    );
  }
}
