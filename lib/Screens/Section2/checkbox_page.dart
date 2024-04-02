import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

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
        title: const Text("Checkbox Widget Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Checkbox without Header and Subtitle: ',style: TextStyle(fontSize: 17.0), ),
              Checkbox(
                checkColor: Colors.greenAccent,
                activeColor: Colors.red,
                value: valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    valuefirst = value!;
                  });
                },
              ),
              const Divider(),
              CheckboxListTile(
                secondary: const Icon(Icons.alarm),
                title: const Text('Ringing at 4:30 AM every day'),
                subtitle: const Text('Ringing after 12 hours'),
                value: valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    valuefirst = value!;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                secondary: const Icon(Icons.alarm),
                title: const Text('Ringing at 5:00 AM every day'),
                subtitle: const Text('Ringing after 12 hours'),
                value: valuesecond,
                onChanged: (bool? value) {
                  setState(() {
                    valuesecond = value!;
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
