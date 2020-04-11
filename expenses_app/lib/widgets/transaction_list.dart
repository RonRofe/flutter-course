import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.transactions.map(
        (Transaction transaction) => Card(child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$${transaction.amount}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
            ),
            decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2)),
          ),
          Column(
            children: <Widget>[
              Text(
                transaction.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,)
              ),
              Text(
                DateFormat.yMMMd().format(transaction.date),
                style: TextStyle(color: Colors.grey)
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )
        ],),)
      ).toList(),
    );
  }
}