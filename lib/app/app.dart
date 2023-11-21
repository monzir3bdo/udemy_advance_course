import 'package:clean_architecture/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../resources/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); //private named constructor
  static const instance = MyApp._internal(); //singleton --appdelgate
  factory MyApp() => instance; //factory constructor

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
    );
  }
}
