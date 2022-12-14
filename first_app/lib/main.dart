import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerFunction() {
    print('ANsered');
  }

  @override
  Widget build(BuildContext context) {
    var bodyColumnChildren = [
      ElevatedButton(onPressed: answerFunction, child: Text('Button 1')),
      ElevatedButton(
          onPressed: () => print('2nd button pressed!'),
          child: Text('Button 2')),
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Title text',
                  style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.amberAccent),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: bodyColumnChildren),
                Column(
                  children: bodyColumnChildren,
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
