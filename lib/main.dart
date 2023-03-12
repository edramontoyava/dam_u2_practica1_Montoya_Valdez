import 'package:dam_u2_practica1_montoya_valdez/practica1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: practica1(),
    );
  }
}
