import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const DAMCApp());
}

class DAMCApp extends StatelessWidget {
  const DAMCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}
