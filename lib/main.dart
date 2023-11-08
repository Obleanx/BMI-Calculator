// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalutator());
}

class BMICalutator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(
            color: Color.fromARGB(255, 5, 14, 56),
          )),
      home: InputPage(),
    );
  }
}
