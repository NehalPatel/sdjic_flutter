import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({Key? key}) : super(key: key);

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Widget Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Checkbox without Header and Subtitle: ',style: TextStyle(fontSize: 17.0), ),
              Checkbox(
                checkColor: Colors.greenAccent,
                activeColor: Colors.red,
                value: this.valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuefirst = value!;
                  });
                },
              ),
              Divider(),
              CheckboxListTile(
                secondary: const Icon(Icons.alarm),
                title: const Text('Ringing at 4:30 AM every day'),
                subtitle: Text('Ringing after 12 hours'),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuefirst = value!;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                secondary: const Icon(Icons.alarm),
                title: const Text('Ringing at 5:00 AM every day'),
                subtitle: Text('Ringing after 12 hours'),
                value: this.valuesecond,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuesecond = value!;
                  });
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
