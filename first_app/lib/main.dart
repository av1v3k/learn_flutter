import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  const double _buttonfontSize = 10;

  void answerFunction() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bodyColumnChildren1 = [
      ElevatedButton(
          onPressed: answerFunction,
          child: const Text('Red', style: TextStyle(fontSize: _buttonfontSize))),
      ElevatedButton(
          onPressed: () => print('2nd button pressed!'),
          child: const Text('Blue', style: TextStyle(fontSize: _buttonfontSize))),
    ];

    var bodyColumnChildren2 = [
      ElevatedButton(
          onPressed: answerFunction,
          child: const Text('Purple', style: TextStyle(fontSize: _buttonfontSize))),
      ElevatedButton(
          onPressed: () {
            print('yello b=pressed');
          },
          child: const Text('Yellow', style: TextStyle(fontSize: _buttonfontSize))),
    ];

    var questions = [
      'What is your favourite Color?',
      'What is your favourite Sweet?',
      'What is your favourite Bomb?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Title text',
                  style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.amberAccent),
          body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Question(questions[_questionIndex]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: bodyColumnChildren1),
                Column(
                  children: bodyColumnChildren2,
                )
              ],
            ),
            // Row(
            //   children: bodyColumnChildren,
            // )
          ])),
    );
  }
}
