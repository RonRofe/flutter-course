import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(String this._questionText);

  @override
  Widget build(BuildContext context) {
    return Text(this._questionText);
  }
}