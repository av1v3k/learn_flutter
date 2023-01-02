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
                                  Border.all(width: 2, color: Colors.purple)),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            tx.amount.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              tx.date.toString(),
                              style: const TextStyle(
                                  color: Colors.grey),
                            )
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
