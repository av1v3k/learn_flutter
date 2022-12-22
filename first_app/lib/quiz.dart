import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int _questionIndex;
  final VoidCallback answerFunction;

  const Quiz(this.questions, this._questionIndex, this.answerFunction,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Question(questions[_questionIndex]['questionText']),
      ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
        return Answer(answer, answerFunction);
      }).toList()
    ]);
  }
}
