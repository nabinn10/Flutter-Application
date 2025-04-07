import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("This is app Bar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
        height: 550,
        width: 350,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 216, 207, 207),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
       child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          )
        ],
       ),
       
      ),),
      

    );
  }
}