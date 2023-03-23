import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({Key? key}) : super(key: key);

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String _selectedCourse = 'BCA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Widget Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text("SDJIC Available Courses", style: TextStyle(fontSize: 30),),
              SizedBox(height: 10,),
              ListTile(
                title: const Text('BCA'),
                leading: Radio(
                  value: "BCA",
                  groupValue: _selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      _selectedCourse = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('BCOM'),
                leading: Radio(
                  value: "BCOM",
                  groupValue: _selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      _selectedCourse = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('BBA'),
                leading: Radio(
                  value: "BBA",
                  groupValue: _selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      _selectedCourse = value!;
                    });
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                print("selected course: $_selectedCourse");
              }, child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
