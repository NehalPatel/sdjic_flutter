import 'package:flutter/material.dart';

class LongListViewPage extends StatelessWidget {
  LongListViewPage({super.key});

  final List<String> products = List<String>.generate(50, (i) => "Product List: $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Long List View"),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(products[index]),
            );
          }
      ),
    );
  }
}
