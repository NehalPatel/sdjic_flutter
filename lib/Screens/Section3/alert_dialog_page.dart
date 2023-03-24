import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  AlertDialogPage({Key? key}) : super(key: key);

  final TextEditingController _alertInputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('My Alert Dialog'),
                      content: Text('This is an example alert dialog.'),
                      actions: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show Alert Dialog'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Calculator"),
                          content: TextField(
                            controller: _alertInputController,
                            decoration: InputDecoration(hintText: "Enter a number"),
                          ),
                          actions: [
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel'),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.add),
                              label: Text('Addition'),
                            ),
                          ],
                        );
                      }
                  );
                },
                child: Text("Input Alert Dialog Box")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return SimpleDialog(
                          title: Text("Select Course"),
                          children: [
                            SimpleDialogOption(
                              onPressed: (){
                                print("BBA");
                                Navigator.of(context).pop();
                              },
                              child: Text("BBA"),
                            ),
                            SimpleDialogOption(
                              onPressed: (){
                                print("BCA");
                                Navigator.of(context).pop();
                              },
                              child: Text("BCA"),
                            ),
                            SimpleDialogOption(
                              onPressed: (){
                                print("BCom");
                                Navigator.of(context).pop();
                              },
                              child: Text("BCom"),
                            )
                          ],
                        );
                      });
                },
                child: Text("Select Course")
            ),
          ],
        ),
      ),
    );
  }
}
