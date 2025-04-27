import 'package:flutter/material.dart';

class StatefullWidgetExample extends StatefulWidget {
  const StatefullWidgetExample({super.key});

  @override
  State<StatefullWidgetExample> createState() => _StatefullWidgetExampleState();
}

class _StatefullWidgetExampleState extends State<StatefullWidgetExample> {
  @override
  void initState() {
    print("Init State Called");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    super.dispose();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
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
    );
  }
}
