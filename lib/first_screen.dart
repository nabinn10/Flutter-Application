import 'package:flutter/material.dart';
import 'package:myapp/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // final GlobalKey<FormState> _nameFromKey = GlobalKey();
  @override
 Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Array of Fruits", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 28, 4, 4),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(child: Column(
              children: [
                // text form filed
                TextFormField(
                  validator: (value)
                  {
                    if (value == null || value.isEmpty )
                    {
                      return "Please Provide fruits name";
                    } 
                    else if (value.length<3)
                    {
                      return "Provide valid fruits name";
                    }
                    else 
                    {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(),
                    labelText: "Fruits"
                    
                  ),
                ),
                FilledButton(onPressed: () {
                  
                }, child: Text("Add Fruits"))
              ],
            )),
            // Text("The first Screen body"),
            // FilledButton(onPressed: () { 
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(name: "Nabin",)));
            // }, child: Text("First Button")),
          ],
        ),
      ),
      
    );
  }
}