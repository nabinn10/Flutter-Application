import 'package:flutter/material.dart';
import 'package:myapp/HotelUI.dart';
import 'package:myapp/TextFieldExample.dart';
import 'package:myapp/button.dart';
import 'package:myapp/class.dart';
import 'package:myapp/classwork.dart';
import 'package:myapp/flower.dart';
import 'package:myapp/form.dart';

import 'package:myapp/homescreen.dart';
import 'package:myapp/rowcolumn.dart';
import 'package:myapp/rowlearn.dart';
import 'package:myapp/image.dart';
import 'package:myapp/simplecalculator.dart';


// import 'package:flutter/material.dart';

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
      home:  HotelUI(),
    );
  }
}