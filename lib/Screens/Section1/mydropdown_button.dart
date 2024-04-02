import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {

  String _selectedValue = 'Option 1';
  final List<String> _dropdownValues = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,
      items: _dropdownValues.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue!;
        });
      },
    );
  }
}
