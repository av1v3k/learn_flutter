import "package:flutter/material.dart";

import "./transaction.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My Expense App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 'R1', amount: 45.44, title: 'Reebok 34 Shoe', date: DateTime.now()),
    Transaction(
        id: 'R2', amount: 21.44, title: 'Slipper Tr', date: DateTime.now())
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expense App'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blueAccent,
                elevation: 3,
                child: Text('Chart later'),
              ),
            ),
            Column(
              children: [
                ...transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 15),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: Colors.black)),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            tx.amount.toString(),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(tx.title),
                            Text(tx.date.toString())
                          ],
                        )
                      ],
                    ),
                  );
                })
              ],
            )
          ],
        ));
  }
}
