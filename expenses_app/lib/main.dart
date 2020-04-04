import 'package:flutter/material.dart';

import 'package:expenses_app/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
      Transaction(id: 't2', title: 'Weekly Groceries', amount: 16.53, date: DateTime.now()),
    ];

    return Scaffold(
      appBar: AppBar(
       title: Text('Flutter App') 
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'), 
              elevation: 5,
            ),
          ),
        Column(
          children: transactions.map(
            (Transaction transaction) => Card(child: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Text(
                  transaction.amount.toString(),
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
                    transaction.date.toString(),
                    style: TextStyle(color: Colors.grey)
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )
            ],),)
          ).toList(),
        )
      ])
    );
  }
}