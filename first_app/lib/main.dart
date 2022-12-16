import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerFunction() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bodyColumnChildren1 = [
      ElevatedButton(onPressed: answerFunction, child: Text('Red')),
      ElevatedButton(
          onPressed: () => print('2nd button pressed!'), child: Text('Blue')),
    ];

    var bodyColumnChildren2 = [
      ElevatedButton(onPressed: answerFunction, child: Text('Purple')),
      ElevatedButton(
          onPressed: () {
            print('yello b=pressed');
          },
          child: Text('Yellow')),
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
            Text(
              questions[questionIndex],
              style: const TextStyle(color: Colors.black87),
            ),
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
