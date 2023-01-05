import "package:flutter/material.dart";

class TrasactionInput extends StatelessWidget {
  final Function handleAddTx;
  TrasactionInput(this.handleAddTx, {super.key});

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
                handleAddTx(titleController.text, double.parse(amountController.text));
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
