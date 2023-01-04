import 'package:flutter/material.dart';

import "./transaction_input.dart";
import "./transaction_list.dart";

class TransactionContainer extends StatefulWidget {
  const TransactionContainer({Key? key}) : super(key: key);

  @override
  _TransactionContainerState createState() => _TransactionContainerState();
}

class _TransactionContainerState extends State<TransactionContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[TrasactionInput(), TransactionList()],
    );
  }
}
