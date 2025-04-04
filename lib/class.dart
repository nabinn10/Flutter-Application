import 'package:flutter/material.dart';

class MyWidgit extends StatelessWidget {
  const MyWidgit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          

         
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            

          child: Center(child: Text("Hello world",style: TextStyle(fontSize: 20),)),
            
          ),
        ),
      ),
    );
  }
}