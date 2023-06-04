import 'package:flutter/material.dart';
import 'package:agrorental/pages/HomePage.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white
      ),
      home: HomePage(),
    );
  }
}

