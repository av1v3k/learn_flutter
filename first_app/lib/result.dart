import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get _resultPhrase {
    String resultText = 'Awesome !';
    if (resultScore <= 8) {
      resultText = 'Not Bad !';
    } else if (resultScore <= 12) {
      resultText = 'OMG!';
    } else if (resultScore <= 20) {
      resultText = 'Smashed it!';
    }
    return resultText;
  }

  const Result(this.resultScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            _resultPhrase,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
