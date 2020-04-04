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
        Column(children: transactions.map((Transaction transaction) => Card(child: Text(
          transaction.title
        ),)).toList(),)
      ])
    );
  }
}