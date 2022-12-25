import 'package:flutter/material.dart';

import './textW.dart';
import './btnW.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _bodyText = 'Initial text';
  void changeButtonText() {
    setState(() {
      _bodyText = 'Changed Text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My First Assignment'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextW(_bodyText),
          BtnW(changeButtonText, 'Touch')
        ],
      ),
    ));
  }
}
