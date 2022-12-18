import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String buttonText;
  const Answer(this.buttonText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: selectHandler,
        child: Text(buttonText, style: const TextStyle(fontSize: 15)));
  }
}
