import 'package:flutter/material.dart';
import 'package:sdjic_flutter/textdemo.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(onPressed: () {
              Navigator.pop(context);
            },
              child: Text("Hello"),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (builder) => TextDemo(),),
              );
            },
                child: Text("Hello")
            ),
          ],
        ),
      ),
    );
  }
}
