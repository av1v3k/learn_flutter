import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String buttonText;
  const Answer(this.buttonText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        child: ElevatedButton(
            onPressed: selectHandler,
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.amberAccent),
            child: Text(buttonText, style: const TextStyle(fontSize: 15))));
    //  ElevatedButton(
    //     onPressed: selectHandler,
    //     style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.amberAccent),
    //     child: Text(buttonText, style: const TextStyle(fontSize: 15)));
  }
}
