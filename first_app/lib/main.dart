import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
    static const List<Map<String, Object>> _questions = const [
      {
        'question': 'What\'s your favorite color?',
        'answers': [
          { 'text': 'Black', 'score': 10 },
          { 'text': 'Red', 'score': 5 },
          { 'text': 'Green', 'score': 3 },
          { 'text': 'White', 'score': 1 }
        ]
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': [
          { 'text': 'Rabbit', 'score': 3 },
          { 'text': 'Snake', 'score': 11 },
          { 'text': 'Elephant', 'score': 5 },
          { 'text': 'Lion', 'score': 9 }
        ]
      },
      {
        'question': 'Who\'s you favoriate instructor?',
        'answers': [
          { 'text': 'Max', 'score': 1 },
          { 'text': 'Max', 'score': 1 },
          { 'text': 'Max', 'score': 1 },
          { 'text': 'Max', 'score': 1 }
        ]
      }
    ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() => this._questionIndex++);

    this._totalScore += score;

    print(this._questionIndex);
    if(this._questionIndex < _MyAppState._questions.length) {
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
        body: this._questionIndex < _MyAppState._questions.length ?
              Quiz(question: _MyAppState._questions[_questionIndex], answerQuestion: this._answerQuestion) :
              Result(this._totalScore, this._resetQuiz)
      )
    );
  }
}
