import 'package:flutter/material.dart';
import 'package:sdjic_flutter/buttondemo.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Text Demo"),
            SizedBox(height: 50.0,),
            RaisedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (builder) => ButtonDemo()
                  )
                );
              },
              child: Text("Button Demo"),
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: () => {
                Navigator.pop(context) // redirect to back page
              },
              color: Colors.red,
              child: Text("back")
            )
          ],
        ),
      ),
    );
  }
}
