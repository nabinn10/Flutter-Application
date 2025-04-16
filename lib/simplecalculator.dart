import 'package:flutter/material.dart';

class Simplecalculator extends StatefulWidget {
  const Simplecalculator({super.key});

  @override
  State<Simplecalculator> createState() => _SimplecalculatorState();
}


class _SimplecalculatorState extends State<Simplecalculator> {

  final TextEditingController dummyTextController1 = TextEditingController();
  final TextEditingController dummyTextController2 = TextEditingController();
  String displayText = "Result: 0.0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(

        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: dummyTextController1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                    width: 3,
                  ),
                ),
                labelText: "Enter first number",
                floatingLabelAlignment: FloatingLabelAlignment.center,
                // prefixIcon: const Icon(Icons.type_specimen_outlined),
                suffixIcon: const Icon(Icons.edit_note),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                counterText: "",
              ),
              keyboardType: TextInputType.number,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: Colors.amber,
              maxLength: 10,
            ),
            // input field for another number
            const SizedBox(height: 20),
            TextField(
              controller: dummyTextController2,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                    width: 3,
                  ),
                ),
                labelText: "Enter second number",
                floatingLabelAlignment: FloatingLabelAlignment.center,
                // prefixIcon: const Icon(Icons.type_specimen_outlined),
                suffixIcon: const Icon(Icons.edit_note),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                counterText: "",
              ),
              keyboardType: TextInputType.number,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: Colors.amber,
              maxLength: 10,
              
            ),
            const SizedBox(height: 20),
            Text(
              displayText,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

          FilledButton.tonalIcon(onPressed: () {
            // Perform addition operation here
            double num1 = double.parse(dummyTextController1.text);
            double num2 = double.parse(dummyTextController2.text);
            double result = num1 + num2;
            setState(() {
              displayText = "Result: $result";
            });
          }, label: Text("ADD"), icon: Icon(Icons.add),),

          FilledButton.tonalIcon(onPressed: () {
            // Perform addition operation here
            double num1 = double.parse(dummyTextController1.text);
            double num2 = double.parse(dummyTextController2.text);
            double result = num1 - num2;
            setState(() {
              displayText = "Result: $result";
            });
          }, label: Text("SUBTRACT"), icon: Icon(Icons.remove),),


          // multiply 
          
          
          
          FilledButton.tonalIcon(onPressed: () {
            // Perform addition operation here
            double num1 = double.parse(dummyTextController1.text);
            double num2 = double.parse(dummyTextController2.text);
            double result = num1 / num2;
            setState(() {
              displayText = "Result: $result";
            });
            }, label: const Text("DIVIDE"), icon: const Icon(Icons.horizontal_rule),),
          ],
          
        ),
      ),
    );
  }
}