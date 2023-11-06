import 'package:flutter/material.dart';
import 'package:application_10/app/main/application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: Colors.blue, // Cambia el color principal
      ),
      home: Application(),
    );
  }
}
