import 'package:flutter/material.dart';

class ButtonClass extends StatelessWidget {
  const ButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is title",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      // scroll garna ko lagi singlechildscrollview
      body: SingleChildScrollView(
        child: Column(
          spacing: 30,
          children: [
            FilledButton(onPressed: () {}, child: Text("click me", style: TextStyle( fontSize: 24),)),
        
            FilledButton.tonal(onPressed: () {}, child: Text("click Again"),),
        
            FilledButton.tonalIcon(onPressed: () {}, label: Text("Button"), icon: Icon(Icons.add),),
        
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        
        
            IconButton.filled(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        
        
            TextButton(onPressed: () {
              print("I am pressed");
            }, child: Text("Button")),
        
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
        
          GestureDetector(
            onDoubleTap: (){
              print("I am double pressed");
            },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            
            ),
          ),


          InkWell(
            onTap: ()
            {
              print("Do nothing");
            },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 179, 177),
                shape: BoxShape.rectangle,
              ),
            
            ),
          ),


        
          ],
        ),
      ),
    );
  }
}