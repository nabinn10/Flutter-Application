import 'package:flutter/material.dart';

class Rowlearn extends StatelessWidget {
  const Rowlearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("This is app Bar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.only(top: 18.0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("This is text", 
          style: TextStyle(fontSize: 28),
          ), 
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          )
          
        ],
      )
      ),
    );
  }
}
