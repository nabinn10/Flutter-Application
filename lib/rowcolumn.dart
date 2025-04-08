import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("This is App Bar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 227, 169, 169),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Column
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.only(top: 20),
                      color: Colors.blue,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Text Area',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      margin: const EdgeInsets.only(top: 20),
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              
              Container(width: 20),
              // Second Column (Takes Remaining Space)
              Expanded(
                
                
                child: Container(
                  height: 250,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
