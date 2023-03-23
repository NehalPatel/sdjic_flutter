import 'package:flutter/material.dart';

class LongListViewPage extends StatelessWidget {
  LongListViewPage({Key? key}) : super(key: key);

  final List<String> products = List<String>.generate(50, (i) => "Product List: $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long List View"),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('${products[index]}'),
            );
          }
      ),
    );
  }
}
