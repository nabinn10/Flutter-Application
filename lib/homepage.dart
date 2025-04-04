import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "This is app Bar",
          style: TextStyle(
            color:Colors.white,
          )),
        centerTitle:true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          width:300,
          height:500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))
          ),
          alignment: Alignment.bottomRight,
          child:Text(
            "Hello World",
            style: TextStyle(
              color: Colors.black,
            ),
          )
          
        ),
      ),

    );
  }
}
