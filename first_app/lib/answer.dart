import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;

  Answer(Function this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer 1'),
        onPressed: this._selectHandler,
        color: Colors.blue,
        textColor: Colors.white,  
      )
    );
  }
}