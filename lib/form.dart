import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> _nameFromKey = GlobalKey();

  bool switchvalue = false;
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form Page",
          style: TextStyle(
            color: Color.fromARGB(255, 234, 232, 231),
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 16, 149, 89),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Form(
          key: _nameFromKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  } else {
                    return null;
                  }
                },

                onSaved: (newValue) {
                  print(newValue);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Name",
                  labelText: "User Name",
                  prefixIcon: Icon(Icons.person), // Added icon
                ),
              ),

              SizedBox(height: 20),
              Switch(
                value: switchvalue,
                onChanged: (value) {
                  setState(() {
                    switchvalue = value;
                  });
                },
              ),
              
              // checkbox
              Checkbox(value: checkedValue, onChanged: (value)
              {
                setState(() {
                  checkedValue = value ?? false;
                });
              }),

              ElevatedButton.icon(
                onPressed: () {
                  if (!_nameFromKey.currentState!.validate()) {
                    return;
                  }

                  _nameFromKey.currentState!.save();
                  // Add further logic here if needed
                },
                icon: Icon(Icons.send), // Added prefix icon
                label: Text("Submit"),
                style: ElevatedButton.styleFrom(foregroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
