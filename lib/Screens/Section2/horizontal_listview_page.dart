import 'package:flutter/material.dart';

class HorizontalListViewPage extends StatelessWidget {
  const HorizontalListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List View"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.cyan,
            child: const Text("VD", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            child: const Text("VV", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.yellow,
            child: const Text("ND", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.green,
            child: const Text("NG", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.purple,
            child: const Text("PP", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.orange,
            child: const Text("AS", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
            child: const Text("NP", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
