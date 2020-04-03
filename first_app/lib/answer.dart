import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerText;

  Answer(
    Function this._selectHandler,
    String this._answerText
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this._answerText),
        onPressed: this._selectHandler,
        color: Colors.blue,
        textColor: Colors.white,  
      )
    );
  }
}