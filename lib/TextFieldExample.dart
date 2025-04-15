import 'package:flutter/material.dart';

class Textfieldexample extends StatefulWidget {
  const Textfieldexample({super.key});

  @override
  State<Textfieldexample> createState() => _TextfieldexampleState();
}

class _TextfieldexampleState extends State<Textfieldexample> {
  final TextEditingController dummyTextController = TextEditingController();
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "This is Appbar",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: const Color.fromARGB(255, 180, 144, 35),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: dummyTextController,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                    width: 3,
                  ),
                ),
                labelText: "Enter your name",
                floatingLabelAlignment: FloatingLabelAlignment.center,
                prefixIcon: const Icon(Icons.type_specimen_outlined),
                suffixIcon: const Icon(Icons.edit_note),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                counterText: "",
              ),
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: Colors.amber,
              maxLength: 10,
              onChanged: (value) {
                setState(() {
                  displayText = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              displayText,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
