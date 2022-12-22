import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
      "answer": [
        {"text": "Red", "score": 5},
        {"text": "Blue", "score": 10},
        {"text": "Green", "score": 10},
        {"text": "Yellow", "score": 4}
      ]
    },
    {
      "questionText": "What is your favourite Sweet?",
      "answer": [
        {"text": "Jamun", "score": 5},
        {"text": "Candy", "score": 10},
        {"text": "Falooda", "score": 10},
        {"text": "Ice-cream", "score": 4}
      ]
    },
    {
      "questionText": "What is your favourite Hobby?",
      "answer": [
        {"text": "Running", "score": 5},
        {"text": "Music", "score": 10},
        {"text": "Travelling", "score": 10},
        {"text": "Trekking", "score": 4}
      ]
    }
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  // const double _buttonfontSize = 10;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

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
              ? Quiz(questions, _questionIndex, _answerQuestion)
              : Result(_totalScore)),
    );
  }
}
