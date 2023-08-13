import 'package:flutter/material.dart';
import './input_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Colors.blue,
          scaffoldBackgroundColor: Colors.green
        //colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red,)
      ),
      home: InputPage(),
    );
  }
}

