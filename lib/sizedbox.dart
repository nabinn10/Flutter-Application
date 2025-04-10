import 'package:flutter/material.dart';

class SIzedBoxExample extends StatelessWidget {
  const SIzedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("This is appbar",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Text("I am text", style: TextStyle(fontSize: 24),),
          ],
        ),
      ),
    );
  }
}