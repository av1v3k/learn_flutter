import 'package:flutter/material.dart';

import "./transaction_input.dart";
import "./transaction_list.dart";
import "./models/transaction.dart";

class TransactionContainer extends StatefulWidget {
  const TransactionContainer({Key? key}) : super(key: key);

  @override
  _TransactionContainerState createState() => _TransactionContainerState();
}

class _TransactionContainerState extends State<TransactionContainer> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'R1', amount: 45.44, title: 'Reebok 34 Shoe', date: DateTime.now()),
    Transaction(
        id: 'R2', amount: 21.44, title: 'Slipper Tr', date: DateTime.now())
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        amount: txAmount,
        title: txTitle,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[TrasactionInput(_addTransaction), TransactionList(_userTransactions)],
    );
  }
}
