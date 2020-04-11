import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title',),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount',),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () => this.addTransaction(
                this.titleController.text,
                double.parse(this.amountController.text)
              ),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}