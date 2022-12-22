import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int _questionIndex;
  final Function answerFunction;

  const Quiz(this.questions, this._questionIndex, this.answerFunction,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Question(questions[_questionIndex]['questionText']),
      ...(questions[_questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            answer['text'] as String, () => answerFunction(answer['score']));
      }).toList()
    ]);
  }
}
