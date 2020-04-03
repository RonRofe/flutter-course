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
    static const List<Map> questions = const [
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

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() => this._questionIndex++);
    print(this._questionIndex);
    if(this._questionIndex < _MyAppState.questions.length) {
      print('We have more questions!');
    } else {
      print('No more options');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: this._questionIndex < _MyAppState.questions.length ? Column(
          children: [
            Question(_MyAppState.questions[this._questionIndex]['question']),
            ...(_MyAppState.questions[_questionIndex]['answers'] as List<String>)
              .map((String answer) => Answer(this._answerQuestion, answer)).toList()
          ],
        ) : Center(child: Text('You did it!'))
      )
    );
  }
}
