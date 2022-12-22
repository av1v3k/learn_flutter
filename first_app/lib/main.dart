import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  List questions = const [
    {
      "questionText": "What is your favourite Color?",
      "answer": ["Red", "Blue", "Green", "Yellow"]
    },
    {
      "questionText": "What is your favourite Sweet?",
      "answer": ["Jamun", "Candy", "Ice-cream", "Falooda"]
    },
    {
      "questionText": "What is your favourite Hobby?",
      "answer": ["Running", "Reading", "Music", "Travel"]
    }
  ];
  var _questionIndex = 0;
  // const double _buttonfontSize = 10;

  void answerFunction() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < questions.length) {
      print('Yes ! some more questions');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: const Text('Rambo feeds',
                  style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.amberAccent),
          body: _questionIndex < questions.length
              ? Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(answer, answerFunction);
                  }).toList()
                ])
              : const Center(
                  child: Text('Thank you for playing'),
                )),
    );
  }
}
