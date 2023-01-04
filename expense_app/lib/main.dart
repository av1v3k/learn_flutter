import "package:flutter/material.dart";

import "./transaction_container.dart";
import 'models/transaction.dart';

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
  final List<Transaction> transactions = [];

  // String titleInput;
  // String amountInput;

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
            const TransactionContainer(),
          ],
        ));
  }
}
