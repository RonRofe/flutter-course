import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() => this._questionIndex++);
    print(this._questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const List<Map> questions = const [
      {
      'question': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'question': 'Who\'s you favoriate instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
              .map((String answer) => Answer(_answerQuestion, answer)).toList()
          ],
        ),
      )
    );
  }
}
