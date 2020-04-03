import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function resetHandler;

  String get _resultPhrase {
    String resultText;
    if(_score <= 8) {
      resultText = 'You\'re awesome and innocent!';
    } else if(_score <= 12) {
      resultText = 'Pretty likeable!';
    } else if(_score <= 16) {
      resultText = 'You\'re ... strange!';
    } else {
      resultText = 'You\'re so bad!';
    }
    return resultText;
  }

  Result(this._score, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
        Text(
          this._resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
          onPressed: this.resetHandler
        )
      ],
    ));
  }
}