import "package:flutter/material.dart";
import 'package:intl/intl.dart';

import "./transaction.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 'R1', amount: 45.44, title: 'Reebok 34 Shoe', date: DateTime.now()),
    Transaction(
        id: 'R2', amount: 21.44, title: 'Slipper Tr', date: DateTime.now())
  ];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expense App'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(0),
              child: const Card(
                color: Colors.blueAccent,
                elevation: 3,
                child: Text('Chart later'),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const TextField(
                      // onChanged: (value) {
                      //   titleInput = value;
                      // },
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    const TextField(
                      // onChanged: (value) {
                      //   amountInput = value;
                      // },
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    TextButton(
                      onPressed: () {
                        transactions.add(Transaction(
                            id: 'asdf',
                            amount: amountController.text as double,
                            title: titleController.text,
                            date: DateTime.now()));
                      },
                      child: const Text(
                        'Add transaction',
                        style: TextStyle(color: Colors.purple),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
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
                            "\$${tx.amount}",
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
                              DateFormat.yMMMEd().add_jm().format(tx.date),
                              style: const TextStyle(color: Colors.grey),
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
