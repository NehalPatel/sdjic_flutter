import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  AlertDialogPage({Key? key}) : super(key: key);

  final TextEditingController _alertInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Widget"),
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
                      title: const Text('My Alert Dialog'),
                      content: const Text('This is an example alert dialog.'),
                      actions: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Alert Dialog'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: const Text("Calculator"),
                          content: TextField(
                            controller: _alertInputController,
                            decoration: const InputDecoration(hintText: "Enter a number"),
                          ),
                          actions: [
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.add),
                              label: const Text('Addition'),
                            ),
                          ],
                        );
                      }
                  );
                },
                child: const Text("Input Alert Dialog Box")
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return SimpleDialog(
                          title: const Text("Select Course"),
                          children: [
                            SimpleDialogOption(
                              onPressed: (){
                                print("BBA");
                                Navigator.of(context).pop();
                              },
                              child: const Text("BBA"),
                            ),
                            SimpleDialogOption(
                              onPressed: (){
                                print("BCA");
                                Navigator.of(context).pop();
                              },
                              child: const Text("BCA"),
                            ),
                            SimpleDialogOption(
                              onPressed: (){
                                print("BCom");
                                Navigator.of(context).pop();
                              },
                              child: const Text("BCom"),
                            )
                          ],
                        );
                      });
                },
                child: const Text("Select Course")
            ),
          ],
        ),
      ),
    );
  }
}
