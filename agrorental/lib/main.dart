import 'package:agrorental/ui/pages/Booking.dart';
import 'package:agrorental/ui/pages/newEngin.dart';
import 'package:agrorental/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/HomePage.dart';

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
      title: 'AgroRental',
      theme: AppTheme.lightTheme,
      home: HomePage(),
    );
  }
}
