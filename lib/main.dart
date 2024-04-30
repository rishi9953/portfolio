import 'package:flutter/material.dart';
import 'package:myportfolio/Screens/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rishabh Kumar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApps(),
    );
  }
}
