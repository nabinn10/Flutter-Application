import 'package:flutter/material.dart';
import 'package:myapp/class.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/rowcolumn.dart';
import 'package:myapp/rowlearn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: RowColumn(),
    );
  }
}


