import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final List<String> name;
  const SecondScreen({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("This is Second Screen title", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 209, 106, 106),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name.join(" ")),
            Text("The first Screen body"),
            FilledButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("Second Button"))
          ],
        ),
      ),
    );
  }
}