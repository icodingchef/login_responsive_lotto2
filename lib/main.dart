import 'package:flutter/material.dart';
import 'package:login_responsive/layout.dart';
import 'package:login_responsive/lottery_app/lotto.dart';
//import 'package:login_responsive/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const Lotto(),
    );
  }
}
