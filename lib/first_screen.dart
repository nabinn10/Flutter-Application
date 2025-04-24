import 'package:flutter/material.dart';
import 'package:myapp/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _fruits = [];
  @override
 Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Array of Fruits", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 28, 4, 4),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextFormField for input
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Provide fruits name";
                  } else if (value.length < 3) {
                    return "Provide valid fruits name";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  if (value != null) {
                    setState(() {
                      _fruits.add(value);
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Fruits",
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: const Text("Add Fruits"),
              ),
               const SizedBox(height: 20),
              ElevatedButton(onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(name: _fruits,)));

              }, 
              child: Text("Move")),
              const SizedBox(height: 20),

             
           
              // Display the list of fruits
              Container(
                padding: const EdgeInsets.all(10),
                child:
                ListView.builder(itemBuilder: (ctx,i)=> Text(_fruits[i]),
                itemCount: _fruits.length,
                
                )
                
              ),
              
            ],
          ),
        ),
      ),
      
    );
  }
}