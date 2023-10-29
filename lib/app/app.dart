import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  MyApp._internal(); //private named constructor
  static final instance=MyApp._internal();//singleton --appdelgate
  factory MyApp()=>instance;//factory constructor

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
