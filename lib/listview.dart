import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("This is Appbar", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 89, 14, 14),
      ),
      body: ListView.builder(
        itemCount: 10, // Specify the number of items
        itemBuilder: (ctx, i) {
          return Text(
        i.toString(),
        style: TextStyle(fontSize: 26),
          );
        },
      ),
    );
  }
}