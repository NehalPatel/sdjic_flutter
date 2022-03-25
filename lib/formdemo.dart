import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {

  final _formKey = GlobalKey<FormState>();

  final String username = '';
  final String email = '';
  final String dateofbirth = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Widget Demo"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                    prefixIcon: Icon(Icons.person)
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please provide valid username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                    hintText: 'Enter Your email address',
                    prefixIcon: Icon(Icons.email)
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please provide valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),

                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Date of Birth',
                    hintText: 'Enter Your Date of Birth',
                    prefixIcon: Icon(Icons.calendar_today)
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please provide valid date of birth';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      
                      // Fluttertoast.showToast(msg: "Processing Data", toastLength: Toast.LENGTH_LONG);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
