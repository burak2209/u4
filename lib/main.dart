import 'package:flutter/material.dart';
import 'package:u4/login_page.dart';

void main() {
  runApp(const U4());
}

class U4 extends StatefulWidget {
  const U4({super.key});

  @override
  State<U4> createState() => _U4State();
}

class _U4State extends State<U4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const LoginPage(),
    );
  }
}
