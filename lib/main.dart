import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_1/bottom_nav.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const MyNewapp(),
    );
  }
}
