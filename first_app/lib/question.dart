import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({super.key})
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Text(
          questionText,
          style: const TextStyle(color: Colors.deepOrange, fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
