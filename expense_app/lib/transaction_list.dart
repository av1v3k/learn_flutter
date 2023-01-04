import "package:flutter/material.dart";
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'R1', amount: 45.44, title: 'Reebok 34 Shoe', date: DateTime.now()),
    Transaction(
        id: 'R2', amount: 21.44, title: 'Slipper Tr', date: DateTime.now())
  ];

  TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ..._userTransactions.map((tx) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.purple)),
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
      ].toList(),
    );
  }
}
