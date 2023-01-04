import "package:flutter/material.dart";

class TrasactionInput extends StatelessWidget {
  TrasactionInput({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
                // transactions.add(Transaction(
                //     id: 'asdf',
                //     amount: double.tryParse(amountController.text) as double,
                //     title: titleController.text,
                //     date: DateTime.now()));
              },
              child: const Text(
                'Add transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
