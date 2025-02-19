import 'package:flutter/material.dart';

class HorizontalListViewPage extends StatelessWidget {
  const HorizontalListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal List View"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.cyan,
            child: Text("VD", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            child: Text("VV", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.yellow,
            child: Text("ND", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.green,
            child: Text("NG", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.purple,
            child: Text("PP", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.orange,
            child: Text("AS", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
            child: Text("NP", style: TextStyle(fontSize: 50, color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
