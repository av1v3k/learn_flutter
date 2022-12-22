import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Thank you for playing', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
    );
  }
}
